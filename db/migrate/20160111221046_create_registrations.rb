class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.float :price
      t.integer :min_age
      t.integer :max_age

      t.timestamps null: false
    end
  end
end
