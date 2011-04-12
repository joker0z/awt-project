class TaskDocument < ActiveRecord::Base
  belongs_to :document
  belongs_to :task
end
