class CreateOoglers < ActiveRecord::Migration
  def change
    create_table :ooglers do |t|
      t.string :name
      t.string :email
      t.string :mobile_phone

      t.timestamps
    end
  end
end
