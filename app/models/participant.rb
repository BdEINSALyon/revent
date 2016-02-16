class Participant < ActiveRecord::Base
  belongs_to :user
  belongs_to :registration
  belongs_to :team
  has_many :documents
  has_many :payments

  validates_confirmation_of :email

  after_create :check_user

  # @param [User] user
  def self.create_from_user(user)
    Participant.create first_name: user.first_name, last_name: user.last_name, email: user.email
  end

  private
  def check_user
    if user.nil? and !team.nil?
      pass = password_gen
      user = User.find_by_email email
      if user.nil?
        user = self.user = User.new first_name: first_name, last_name: last_name, email: email, password: pass, password_confirmation: pass
        user.team = team
        self.user.save(validate: false)
        Users.create(user).deliver
      else
        if user.team.nil?
          user.team = team
          user.save
        else
          raise Exception
        end
        self.user = user
      end
      save!
    end
  end

  def password_gen
    (('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a).shuffle.first(8).join
  end
end
