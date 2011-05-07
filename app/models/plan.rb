class Plan < ActiveRecord::Base
  has_and_belongs_to_many :school_classes
  has_many :tasks
end
