class AddDateToLessons < ActiveRecord::Migration
  def self.up
    add_column :lessons, :date, :datetime
  end

  def self.down
    remove_column :lessons, :date
  end
end
