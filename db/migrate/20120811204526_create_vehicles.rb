class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.string :color
      t.string :license_plate_number
      t.string :license_plate_state

      t.timestamps
    end
  end
end
