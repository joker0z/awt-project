class Plan < ActiveRecord::Base
  belongs_to :school_class
  belongs_to :task
end
