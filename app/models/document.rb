class Document < ActiveRecord::Base
  belongs_to :teacher
  has_and_belongs_to_many :tasks
  
  has_attached_file :file
end
