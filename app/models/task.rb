class Task < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :plan
  has_many   :task_document
end
