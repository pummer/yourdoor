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
  
  def create_application
    if valid?
    amount = 25.00
    description = "Transaction for #{self.property.address_1} #{self.property.address_2}, #{self.property.zip}."
    self.i_apps.each do |i_app|
      i_app.payment.charge_customer(amount, description)
      
      save! 
    end 
  
    end
    
  end
  
end
