class Incomes < ActiveRecord::Base
  attr_accessible :income, :proof_of_income, :source, :i_app_id
  belongs_to :i_app
  
  validates_presence_of :i_app_id
  validates_presence_of :source
  validates_presence_of :proof_of_income
  validates :income, :presence => true,
            :numericality => true,
            :format => { :with => /^\d{1,4}(\.\d{0,2})?$/ }
end
