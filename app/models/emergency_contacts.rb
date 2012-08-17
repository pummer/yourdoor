class EmergencyContacts < ActiveRecord::Base
  attr_accessible :address, :city, :name, :phone, :relationship, :state, :zip, :i_app_id

  belongs_to :i_app
end
