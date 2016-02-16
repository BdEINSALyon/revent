class AddTeamToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :teams
  end
end
