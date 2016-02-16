class CorrectErrors < ActiveRecord::Migration
  def change
    remove_reference :users, :teams
    add_reference :users, :team
  end
end
