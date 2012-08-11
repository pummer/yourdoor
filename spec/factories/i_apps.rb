# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :i_app do
    first_name "MyString"
    middle_name "MyString"
    last_name "MyString"
    social_security_number "MyString"
    date_of_birth ""
    drivers_license_number "MyString"
    drivers_license_state "MyString"
    phone "MyString"
    email "MyString"
  end
end
