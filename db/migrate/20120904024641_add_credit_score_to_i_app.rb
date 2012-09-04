class AddCreditScoreToIApp < ActiveRecord::Migration
  def change
    add_column :i_apps, :credit_score_id, :integer
  end
end
