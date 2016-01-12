class Question < ActiveRecord::Base
  has_and_belongs_to_many :registration
  has_many :answers
  has_many :participants, :through => :answers
end
