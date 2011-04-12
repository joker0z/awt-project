class Document < ActiveRecord::Base
  belongs_to :teacher
  has_many   :task_document
end
