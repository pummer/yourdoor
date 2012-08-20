class IApp < ActiveRecord::Base
  attr_accessible :date_of_birth, :drivers_license_number, :drivers_license_state, :email, :first_name, :last_name, :middle_name, :phone, :social_security_number, :user_id, :marital_status_id, :r_app_id

  belongs_to :user
  has_many :employments, :dependent => :destroy
  has_many :emergency_contacts, :dependent => :destroy
  has_many :incomes, :dependent => :destroy
  has_many :personal_references, :dependent => :destroy
  has_many :pets, :dependent => :destroy
  has_many :previous_addresses, :dependent => :destroy
  has_many :vehicles, :dependent => :destroy
  has_one :marital_status
  belongs_to :r_app
  
  accepts_nested_attributes_for :employments
  accepts_nested_attributes_for :emergency_contacts
  accepts_nested_attributes_for :incomes
  accepts_nested_attributes_for :personal_references
  accepts_nested_attributes_for :pets
  accepts_nested_attributes_for :previous_addresses
  accepts_nested_attributes_for :vehicles
  
end
