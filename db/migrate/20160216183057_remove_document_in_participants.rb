class RemoveDocumentInParticipants < ActiveRecord::Migration
  def change
    remove_column :participants, :document_id
  end
end
