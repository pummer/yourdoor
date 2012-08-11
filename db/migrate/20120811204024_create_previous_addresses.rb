class CreatePreviousAddresses < ActiveRecord::Migration
  def change
    create_table :previous_addresses do |t|
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.integer :length_lived_months
      t.string :landlord_name
      t.string :landlord_phone
      t.string :reason_for_leaving
      t.decimal :rent_amount
      t.boolean :rent_paid

      t.timestamps
    end
  end
end
