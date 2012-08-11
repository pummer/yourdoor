# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :previous_address, :class => 'PreviousAddresses' do
    address_1 "MyString"
    address_2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    length_lived_months 1
    landlord_name "MyString"
    landlord_phone "MyString"
    reason_for_leaving "MyString"
    rent_amount ""
    rent_paid false
  end
end
