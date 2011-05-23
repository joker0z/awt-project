class Teacher < ActiveRecord::Base
  has_and_belongs_to_many :school_classes, :through => :teachers_school_classes
  has_many :document
  has_many :news
  has_many :task
  belongs_to :user
end
