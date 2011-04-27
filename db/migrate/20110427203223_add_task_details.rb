class AddTaskDetails < ActiveRecord::Migration
  def self.up
    add_column :tasks, :title, :string
    add_column :tasks, :description, :string
  end

  def self.down
    remove_column :tasks, :title, :string
    remove_column :tasks, :description, :string
  end
end
