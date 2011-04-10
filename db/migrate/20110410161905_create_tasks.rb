class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.text :content
      t.references :teacher
      t.references :school_class

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
