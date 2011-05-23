class Task < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :lesson
  has_and_belongs_to_many :documents
  accepts_nested_attributes_for :documents, :allow_destroy => true
end
