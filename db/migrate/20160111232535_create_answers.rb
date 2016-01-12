class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.integer :participant_id
      t.text :value

      t.timestamps null: false
    end
  end
end
