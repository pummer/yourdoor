class Vehicles < ActiveRecord::Base
  attr_accessible :color, :license_plate_number, :license_plate_state, :make, :model, :year

  belongs_to :i_app
end
