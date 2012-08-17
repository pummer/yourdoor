class Incomes < ActiveRecord::Base
  attr_accessible :income, :proof_of_income, :source, :i_app_id
  belongs_to :i_app
end
