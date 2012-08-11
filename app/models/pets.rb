class Pets < ActiveRecord::Base
  attr_accessible :age, :indoor, :name, :type_breed
  belongs_to :i_app
end
