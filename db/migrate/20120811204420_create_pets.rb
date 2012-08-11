class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type_breed
      t.boolean :indoor
      t.integer :age

      t.timestamps
    end
  end
end
