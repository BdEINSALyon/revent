class Team < ActiveRecord::Base
  has_many :participants
  has_many :users, :through => :participants
end
