class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :participants
  has_many :bills
  has_many :billing_addresses
  has_many :teams, :through => :participants

  belongs_to :team

  def as_participant
    Participant.new user: self, first_name: first_name, last_name: last_name, valid_participation: false
  end
end
