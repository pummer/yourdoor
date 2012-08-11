class PreviousAddresses < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :city, :landlord_name, :landlord_phone, :length_lived_months, :reason_for_leaving, :rent_amount, :rent_paid, :state, :zip
  belongs_to :i_app
end
