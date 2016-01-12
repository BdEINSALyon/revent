class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.string :type
      t.text :value

      t.timestamps null: false
    end
  end
end
