class RApp < ActiveRecord::Base
  attr_accessible  :submission_date, :landlord_id, :listing_broker_id, :property_id
  has_many :i_apps
  belongs_to :property
  belongs_to :landlord, :class_name => 'Oogler'
  belongs_to :listing_broker, :class_name => 'Oogler'
end
