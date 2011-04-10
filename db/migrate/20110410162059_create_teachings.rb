class CreateTeachings < ActiveRecord::Migration
  def self.up
    create_table :teachings do |t|
      t.references :teacher
      t.references :school_class

      t.timestamps
    end
  end

  def self.down
    drop_table :teachings
  end
end
