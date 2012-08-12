class RApp < ActiveRecord::Base
  attr_accessible  :submission_date
  has_many :i_apps
  has_many :r_app_ooglers
  has_one :property
  has_one :realtor, :through => :r_app_ooglers, :conditions => ["ooglers_type.name = Realtor"]
  has_one :landlord, :through => :r_app_ooglers, :conditions => ["ooglers_type.name = Landlord"]
end
