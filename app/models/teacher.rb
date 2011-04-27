class Teacher < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :school_classes
  has_many :document
  has_many :news
  has_many :task
end
