class CreateTaskDocuments < ActiveRecord::Migration
  def self.up
    create_table :task_documents do |t|
      t.boolean :is_published
      t.integer :task_id
      t.integer :document_id

      t.timestamps
    end
  end

  def self.down
    drop_table :task_documents
  end
end
