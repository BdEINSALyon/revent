class Payment < ActiveRecord::Base
  belongs_to :participant
  belongs_to :bill
end
