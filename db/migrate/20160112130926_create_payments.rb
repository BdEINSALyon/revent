class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :participant_id
      t.integer :bill_id
      t.float :price
      t.float :taxes

      t.timestamps null: false
    end
  end
end
