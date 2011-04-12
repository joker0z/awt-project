class SchoolClass < ActiveRecord::Base
  belongs_to :teacher
  has_many :student_class
  has_many :teaching
  has_many :news
  has_many :plan
end
