class CreateRAppOoglers < ActiveRecord::Migration
  def change
    create_table :r_app_ooglers do |t|
      t.references :rapp
      t.references :oogler
      t.integer :oogler_type

      t.timestamps
    end
    add_index :r_app_oogler, :rapp_id
  end
end
