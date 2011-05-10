class AddClassIdToLessons < ActiveRecord::Migration
  def self.up
    remove_column :lessons, :class_id
    add_column :lessons, :school_class_id, :integer
  end

  def self.down
    remove_column :lessons, :school_class_id
  end
end
