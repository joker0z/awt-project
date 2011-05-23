class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.integer :teacher_id
      t.integer :plan_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
