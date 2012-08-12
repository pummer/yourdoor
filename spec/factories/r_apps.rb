# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :r_app do
    submission_date "2012-08-12"
    property 1
    landlord 1
    realtor 1
  end
end
