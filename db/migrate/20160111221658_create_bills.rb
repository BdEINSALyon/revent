class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :number
      t.integer :user_id
      t.integer :team_id
      t.integer :billing_address_id

      t.timestamps null: false
    end
  end
end
