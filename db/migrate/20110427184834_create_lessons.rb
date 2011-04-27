class CreateLessons < ActiveRecord::Migration
  def self.up
    create_table :lessons do |t|
      t.integer :class_id
      t.integer :plan_id

      t.timestamps
    end
  end

  def self.down
    drop_table :lessons
  end
end
