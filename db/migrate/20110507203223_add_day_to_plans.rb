class AddDayToPlans < ActiveRecord::Migration
  def self.up
    add_column :plans, :day, :integer
  end

  def self.down
    remove_column :plans, :day
  end
end
