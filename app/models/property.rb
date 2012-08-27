class Property < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :city, :state, :zip
  
  validates_presence_of :address_1, :city, :state, :zip
end
