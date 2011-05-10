class MoveTaskToLessons < ActiveRecord::Migration
  def self.up
    remove_column :tasks, :plan_id
    add_column :tasks, :lesson_id, :integer
  end

  def self.down
    remove_column :tasks, :lesson_id
  end
end
