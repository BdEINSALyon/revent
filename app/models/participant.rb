class Participant < ActiveRecord::Base
  belongs_to :user
  belongs_to :registration
  belongs_to :team
  has_many :documents
  has_many :answers
  has_many :payments

  validates_confirmation_of :email

  # @param [User] user
  def self.create_from_user(user)
    Participant.create first_name: user.first_name, last_name: user.last_name, email: user.email
  end
end
