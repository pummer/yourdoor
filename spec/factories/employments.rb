# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employment, :class => 'Employments' do
    employer "MyString"
    occupation "MyString"
    hours_per_week 1
    supervisor_name "MyString"
    supervisor_phone "MyString"
    years_employed 1
    address "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
  end
end
