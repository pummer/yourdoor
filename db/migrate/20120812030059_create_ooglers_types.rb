class CreateOoglersTypes < ActiveRecord::Migration
  def change
    create_table :ooglers_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
