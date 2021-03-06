class CreateInvestors < ActiveRecord::Migration[7.0]
  def change
    create_table :investors do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :phone_number
      t.string :street_address
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
