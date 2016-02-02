class Team < ActiveRecord::Base
  has_many :participants
  has_many :users, :through => :participants
  accepts_nested_attributes_for :participants
end
