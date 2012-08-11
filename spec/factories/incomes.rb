# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :income, :class => 'Incomes' do
    income 1
    source "MyString"
    proof_of_income false
  end
end
