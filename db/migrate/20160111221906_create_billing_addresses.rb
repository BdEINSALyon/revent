class CreateBillingAddresses < ActiveRecord::Migration
  def change
    create_table :billing_addresses do |t|
      t.string :name
      t.string :company
      t.string :first_address_line
      t.string :second_address_line
      t.string :postal_code
      t.string :city
      t.string :country

      t.timestamps null: false
    end
  end
end
