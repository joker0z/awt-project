class CreateSchoolClasses < ActiveRecord::Migration
  def self.up
    create_table :school_classes do |t|
      t.string :class_name
      t.string :profile
      t.integer :nb_students
      t.references :teacher

      t.timestamps
    end
  end

  def self.down
    drop_table :school_classes
  end
end
