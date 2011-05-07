class AddTeacherClassJoinTable < ActiveRecord::Migration
  def self.up
    create_table :teachers_school_classes, :id => false do |t|
      t.integer :school_class_id
      t.integer :teacher_id
    end
  end

  def self.down
    drop_table :teachers_school_classes
  end
end
