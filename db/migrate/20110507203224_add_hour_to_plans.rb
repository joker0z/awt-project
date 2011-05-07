class AddHourToPlans < ActiveRecord::Migration
  def self.up
    add_column :plans, :hour, :integer
  end

  def self.down
    remove_column :plans, :hour
  end
end
