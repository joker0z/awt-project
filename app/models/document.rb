class Document < ActiveRecord::Base
  belongs_to :teacher
  has_and_belongs_to_many :tasks
  
  has_attached_file :filename
  attr_accessor :filename_file_name
  attr_accessor :filename_content_type
  attr_accessor :filename_file_size
  attr_accessor :filename_updated_at
end
