class Task < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :plan
  has_and_belongs_to_many :documents
end
