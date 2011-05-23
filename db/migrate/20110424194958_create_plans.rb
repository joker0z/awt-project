class CreatePlans < ActiveRecord::Migration
  def self.up
    create_table :plans do |t|
      t.string :room
      t.datetime :hours
      t.string :subject

      t.timestamps
    end
  end

  def self.down
    drop_table :plans
  end
end
