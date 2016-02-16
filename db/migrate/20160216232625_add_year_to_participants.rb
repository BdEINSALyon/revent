class AddYearToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :year, :string
  end
end
