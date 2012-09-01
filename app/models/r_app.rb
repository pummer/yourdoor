class RApp < ActiveRecord::Base
  attr_accessible  :submission_date, :landlord_id, :listing_broker_id, :property_id, :property_attributes
  belongs_to :property
  belongs_to :landlord, :class_name => "Ooglers"
  belongs_to :listing_broker, :class_name => "Ooglers"
  has_many :i_apps
  
  attr_accessible :landlord_attributes
  attr_accessible :listing_broker_attributes
  attr_accessible :i_apps_attributes
  
  validates_presence_of :property
 # validates_presence_of :landlord
#  validates_presence_of :listing_broker
 # validates_presence_of :i_apps
  
  accepts_nested_attributes_for :i_apps
  accepts_nested_attributes_for :property
  accepts_nested_attributes_for :landlord
  accepts_nested_attributes_for :listing_broker
  
  #Application Creation Process
  # 1. Make Transunion Call
  # 2. Charge Credit Card
  # 3. Persist to Database
  def create_application
    if valid?
    amount = 25.00
    description = "Transaction for #{self.property.address_1} #{self.property.address_2}, #{self.property.zip}."
     begin
      self.i_apps.each do |i_app|
        i_app.payment.charge_customer(amount, description)  
     end
     rescue Stripe::InvalidRequestError => e
        # TODO: In future, need to ensure if multiple charges are created at once, they are reversed
        logger.error "Stripe error while creating customer: #{e.message}"
        errors.add :base, "There was a problem with your credit card."
        return false
     rescue => e
       logger.error "Capturing Any other errors: #{e.message}"
       errors.add :base, "There was a problem with your credit card."
       return false
    end
    
    transaction do
      begin
      # Save Models
        save!
      rescue => e
        logger.error "Application Error Occurred: #{e.message}"
        errors.add :base, "There was a problem creating your application."
        false
      end
    end
    end
  end
  
end
