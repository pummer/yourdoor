class EmergencyContacts < ActiveRecord::Base
  attr_accessible :address, :city, :name, :phone, :relationship, :state, :zip

  belongs_to ::i_app
end
