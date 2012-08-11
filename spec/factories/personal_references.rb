# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :personal_reference, :class => 'PersonalReferences' do
    name "MyString"
    address "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    phone "MyString"
    relationship "MyString"
  end
end
