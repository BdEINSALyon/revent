class Participant < ActiveRecord::Base
  belongs_to :user
  belongs_to :registration
  belongs_to :team
  has_many :documents
  has_many :answers
  has_many :payments
  validates_confirmation_of :email
end
