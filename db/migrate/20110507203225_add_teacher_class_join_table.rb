class AddTeacherClassJoinTable < ActiveRecord::Migration
  def self.up
    create_table :school_classes_teachers, :id => false do |t|
      t.integer :school_class_id
      t.integer :teacher_id
    end
  end

  def self.down
    drop_table :school_classes_teachers
  end
end
