class IApp < ActiveRecord::Base
  attr_accessible :date_of_birth, :drivers_license_number, :drivers_license_state, :email, :first_name, :last_name, :middle_name, :phone, :social_security_number, :user_id, :marital_status_id, :r_app_id

  belongs_to :user
  has_many :employments
  has_many :emergency_contacts
  has_many :incomes
  has_many :personal_references
  has_many :pets
  has_many :previous_addresses
  has_many :vehicles
  belongs_to :marital_status
  belongs_to :r_app
end
