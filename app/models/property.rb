class Property < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :city, :state, :zip
end
