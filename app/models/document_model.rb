class DocumentModel < ActiveRecord::Base
  has_many :documents
  has_many :participants, :through => :documents
  has_and_belongs_to_many :registrations
end
