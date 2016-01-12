class AddRegistrationToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :registration_id, :integer
  end
end
