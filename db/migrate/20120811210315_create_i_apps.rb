class CreateIApps < ActiveRecord::Migration
  def change
    create_table :i_apps do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :social_security_number
      t.date :date_of_birth
      t.string :drivers_license_number
      t.string :drivers_license_state
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
