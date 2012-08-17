class CreateRApps < ActiveRecord::Migration
  def change
    create_table :r_apps do |t|
      t.date :submission_date
      t.integer :property
      t.integer :landlord
      t.integer :listing_broker

      t.timestamps
    end
  end
end
