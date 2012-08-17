class AddIdColumnsForAllAssocs < ActiveRecord::Migration
  def change
    add_column :emergency_contacts, :i_app_id, :integer
    add_column :employments, :i_app_id, :integer
    add_column :i_apps, :user_id, :integer
    add_column :i_apps, :marital_status_id, :integer
    add_column :incomes, :i_app_id, :integer
    add_column :personal_references, :i_app_id, :integer
    add_column :pets, :i_app_id, :integer
    add_column :previous_addresses, :i_app_id, :integer
    add_column :r_apps, :property_id, :integer
    add_column :vehicles, :i_app_id, :integer
    add_column :i_apps, :r_app_id, :integer
    
  end
end
