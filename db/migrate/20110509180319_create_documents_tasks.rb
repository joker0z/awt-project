class CreateDocumentsTasks < ActiveRecord::Migration
  def self.up
    create_table :documents_tasks, :id => false do |t|
      t.boolean :is_published
      t.integer :task_id
      t.integer :document_id

      t.timestamps
    end
  end

  def self.down
    drop_table :documents_tasks
  end
end
