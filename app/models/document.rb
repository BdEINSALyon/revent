class Document < ActiveRecord::Base
  belongs_to :participant
  belongs_to :document_model
end
