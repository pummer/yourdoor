class AddOoglerIDstoRapp < ActiveRecord::Migration
 def change
  add_column :r_apps, :landlord_id, :integer
  add_column :r_apps, :listing_broker_id, :integer
 end
end
