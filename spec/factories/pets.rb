# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pet, :class => 'Pets' do
    name "MyString"
    type_breed "MyString"
    indoor false
    age 1
  end
end
