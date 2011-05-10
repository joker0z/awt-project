class SchoolClass < ActiveRecord::Base
  has_and_belongs_to_many :students
  has_and_belongs_to_many :teachers
  has_many :news
  has_many :lessons
  has_many :plans, :through => :lessons
  has_many :task
end
