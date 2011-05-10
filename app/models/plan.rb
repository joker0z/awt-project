class Plan < ActiveRecord::Base
  has_many :lessons
  has_many :school_classes, :through => :lessons
  has_many :tasks
end
