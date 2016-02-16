class AddParticipantToDocuments < ActiveRecord::Migration
  def change
    add_reference :documents, :participant
  end
end
