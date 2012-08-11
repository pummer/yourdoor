# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :oogler, :class => 'Ooglers' do
    name "MyString"
    email "MyString"
    mobile_phone "MyString"
  end
end
