# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vehicle, :class => 'Vehicles' do
    year 1
    make "MyString"
    model "MyString"
    color "MyString"
    license_plate_number "MyString"
    license_plate_state "MyString"
  end
end
