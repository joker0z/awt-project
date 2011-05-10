class Lesson < ActiveRecord::Base
  belongs_to :school_class
  belongs_to :plan
  has_many :tasks
end
