class CreateNews < ActiveRecord::Migration
  def self.up
    create_table :news do |t|
      t.string :title
      t.string :content
      t.integer :school_class_id

      t.timestamps
    end
  end

  def self.down
    drop_table :news
  end
end
