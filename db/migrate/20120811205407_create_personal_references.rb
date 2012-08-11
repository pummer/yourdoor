class CreatePersonalReferences < ActiveRecord::Migration
  def change
    create_table :personal_references do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :relationship

      t.timestamps
    end
  end
end
