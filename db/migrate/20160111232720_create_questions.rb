class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.string :type
      t.integer :registration_id
      t.text :default_value

      t.timestamps null: false
    end
  end
end
