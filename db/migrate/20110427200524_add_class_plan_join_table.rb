class AddClassPlanJoinTable < ActiveRecord::Migration
  def self.up
    create_table :plans_school_classes, :id => false do |t|
      t.integer :school_class_id
      t.integer :plan_id
    end
  end

  def self.down
    drop_table :plans_school_classes
  end
end
