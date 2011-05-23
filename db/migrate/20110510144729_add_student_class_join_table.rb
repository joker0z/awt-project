class AddStudentClassJoinTable < ActiveRecord::Migration
  def self.up
    create_table :school_classes_students, :id => false do |t|
      t.integer :school_class_id
      t.integer :student_id
    end
  end

  def self.down
    drop_table :school_classes_students
  end
end
