class Teacher < ActiveRecord::Base
  belongs_to :user
  has_many :teaching
  has_many :document
  has_many :news
  has_many :task
end
