class Ooglers < ActiveRecord::Base
  attr_accessible :email, :mobile_phone, :name
  has_many :ooglers_types
end
