# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :property do
    address_1 "MyString"
    address_2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
  end
end
