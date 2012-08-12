# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :iapp_oogler, :class => 'IappOoglers' do
    i_app_id nil
    oogler_id 1
    ooglers_type 1
  end
end
