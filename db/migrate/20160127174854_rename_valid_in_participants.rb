class RenameValidInParticipants < ActiveRecord::Migration
  def change
    rename_column :participants, :valid, :valid_participation
  end
end
