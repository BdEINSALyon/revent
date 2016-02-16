class AddInfoToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :other, :text
    add_column :participants, :meal, :text
    add_column :participants, :shirt_size, :string
    add_column :participants, :vtt, :string
    add_column :participants, :departement, :string
  end
end
