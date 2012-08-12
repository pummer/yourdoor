class RAppOoglers < ActiveRecord::Base
  attr_accessible :ooglers_type
  
  belongs_to :rapp
  belongs_to :oogler
end
