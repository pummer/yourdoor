class Pets < ActiveRecord::Base
  attr_accessible :age, :indoor, :name, :type_breed, :i_app_id
  belongs_to :i_app
  
  validates_presence_of :type_breed
end
