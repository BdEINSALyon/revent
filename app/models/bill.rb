class Bill < ActiveRecord::Base
  belongs_to :user
  belongs_to :billing_address
  has_many :payments
  has_many :participants, :through => :payments
  has_many :registrations, :through => :participants
end
