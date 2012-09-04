class IApp < ActiveRecord::Base
  attr_accessible :date_of_birth, :drivers_license_number, :drivers_license_state, :email, :first_name, :last_name, 
    :middle_name, :phone, :social_security_number, :user_id, :marital_status_id, :credit_score_id, :r_app_id, :employments,
    :emergency_contacts, :personal_references, :pets, :previous_addresses,
    :vehicles

  belongs_to :user
  has_many :employments, :class_name => 'Employments', :dependent => :destroy
  has_many :emergency_contacts, :class_name => 'EmergencyContacts', :dependent => :destroy
  has_many :incomes, :class_name => 'Incomes', :dependent => :destroy
  has_many :personal_references, :class_name => 'PersonalReferences', :dependent => :destroy
  has_many :pets, :class_name => 'Pets', :dependent => :destroy
  has_many :previous_addresses, :class_name => 'PreviousAddresses', :dependent => :destroy
  has_many :vehicles, :class_name => 'Vehicles', :dependent => :destroy
  has_one :marital_status
  has_one :credit_score
  belongs_to :r_app
  belongs_to :payment
  
  attr_accessible :pets_attributes
  attr_accessible :payment_attributes
  attr_accessible :employments_attributes
  attr_accessible :emergency_contacts_attributes
  attr_accessible :incomes_attributes
  attr_accessible :personal_references_attributes
  attr_accessible :previous_addresses_attributes
  
  
  accepts_nested_attributes_for :employments
  accepts_nested_attributes_for :emergency_contacts
  accepts_nested_attributes_for :incomes
  accepts_nested_attributes_for :personal_references
  accepts_nested_attributes_for :pets
  accepts_nested_attributes_for :previous_addresses
  accepts_nested_attributes_for :vehicles
  accepts_nested_attributes_for :payment
  
end
