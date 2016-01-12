class AddDocumentToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :document_id, :integer
  end
end
