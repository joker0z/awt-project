class CreateTeachers < ActiveRecord::Migration
  def self.up
    create_table :teachers do |t|
      t.string :login
      t.string :password
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end

  def self.down
    drop_table :teachers
  end
end
