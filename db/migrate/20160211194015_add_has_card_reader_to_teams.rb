class AddHasCardReaderToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :has_card_reader, :boolean
  end
end
