class Registration < ActiveRecord::Base
  has_and_belongs_to_many :registration_pools
  has_and_belongs_to_many :required_documents, :class_name => 'DocumentModel'
  has_and_belongs_to_many :required_questions, :class_name => 'Question'
  has_many :participants
end
