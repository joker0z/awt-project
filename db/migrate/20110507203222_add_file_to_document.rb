class AddFileToDocument < ActiveRecord::Migration
  def self.up
    add_column :documents, :file_file_name, :string
    add_column :documents, :file_content_type, :string
    add_column :documents, :file_file_size, :integer
    add_column :documents, :file_updated_at, :datetime
  end

  def self.down
    remove_column :documents, :file_file_name, :string
    remove_column :documents, :file_content_type, :string
    remove_column :documents, :file_file_size, :integer
    remove_column :documents, :file_updated_at, :datetime
  end
end
