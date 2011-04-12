class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string :name
      t.text :description
      t.boolean :is_published
      t.integer :teacher_id

      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
