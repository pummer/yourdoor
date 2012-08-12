# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :r_app_oogler, :class => 'RAppOoglers' do
    rapp nil
    oogler_id 1
    ooglers_type 1
  end
end
