class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.integer :income
      t.string :source
      t.boolean :proof_of_income

      t.timestamps
    end
  end
end
