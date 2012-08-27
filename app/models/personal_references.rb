class PersonalReferences < ActiveRecord::Base
  attr_accessible :address, :city, :name, :phone, :relationship, :state, :zip, :i_app_id
  belongs_to :i_app
  
  validates_presence_of :name
  validates_presence_of :address
  validates_presence_of :city
  validates_presence_of :phone
  validates_presence_of :state
  validates_presence_of :zip
  
end
