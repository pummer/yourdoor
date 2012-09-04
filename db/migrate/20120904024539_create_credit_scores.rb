class CreateCreditScores < ActiveRecord::Migration
  def change
    create_table :credit_scores do |t|
      t.integer :score

      t.timestamps
    end
  end
end
