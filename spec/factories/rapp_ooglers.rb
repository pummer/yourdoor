# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rapp_oogler, :class => 'RappOoglers' do
    rapp_id nil
    oogler_id 1
    ooglers_type 1
  end
end
