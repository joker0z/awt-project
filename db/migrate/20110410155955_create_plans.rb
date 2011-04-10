class CreatePlans < ActiveRecord::Migration
  def self.up
    create_table :plans do |t|
      t.string :name
      t.datetime :hours
      t.references :school_class_id

      t.timestamps
    end
  end

  def self.down
    drop_table :plans
  end
end
