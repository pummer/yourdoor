class RApp < ActiveRecord::Base
  attr_accessible  :submission_date, :landlord_id, :listing_broker_id, :property_id
  has_many :i_apps, :dependent => :destroy
  belongs_to :property, :class_name => "Property"
  belongs_to :landlord, :class_name => "Oogler"
  belongs_to :listing_broker, :class_name => "Oogler"
  
  validates_presence_of :property_id
  validates_presence_of :landlord_id
  validates_presence_of :listing_broker_id
  validates_presence_of :i_apps
  
  accepts_nested_attributes_for :i_apps
  accepts_nested_attributes_for :property
  
end
