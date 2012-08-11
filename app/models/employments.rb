class Employments < ActiveRecord::Base
  attr_accessible :address, :city, :employer, :hours_per_week, :occupation, :state, :supervisor_name, :supervisor_phone, :years_employed, :zip
  belongs_to :i_app
end
