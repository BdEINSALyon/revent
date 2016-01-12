class Participant < ActiveRecord::Base
  belongs_to :user
  belongs_to :registration
  has_many :documents
  has_many :answers
  has_many :payments
end
