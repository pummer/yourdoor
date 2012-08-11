class Incomes < ActiveRecord::Base
  attr_accessible :income, :proof_of_income, :source
  belongs_to :i_app
end
