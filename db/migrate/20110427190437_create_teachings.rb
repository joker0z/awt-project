class CreateTeachings < ActiveRecord::Migration
  def self.up
    create_table :teachings do |t|
      t.integer :class_id
      t.integer :teacher_id

      t.timestamps
    end
  end

  def self.down
    drop_table :teachings
  end
end
