class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.string :employer
      t.string :occupation
      t.integer :hours_per_week
      t.string :supervisor_name
      t.string :supervisor_phone
      t.integer :years_employed
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
