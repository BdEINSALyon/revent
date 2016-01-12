class CreateRegistrationPools < ActiveRecord::Migration
  def change
    create_table :registration_pools do |t|
      t.string :name
      t.integer :amount

      t.timestamps null: false
    end
  end
end
