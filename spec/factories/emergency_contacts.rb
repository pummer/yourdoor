# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :emergency_contact, :class => 'EmergencyContacts' do
    name "MyString"
    address "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    phone "MyString"
    relationship "MyString"
  end
end
