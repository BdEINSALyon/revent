class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :birthday
      t.string :gender
      t.boolean :valid

      t.timestamps null: false
    end
  end
end
