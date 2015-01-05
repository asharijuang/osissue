class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :project_id, :default => 0, :null => false
      t.integer :tracker_id, :default => 0, :null => false
      t.string :subject, :default=> "", :null => false
      t.text :description
      t.integer :status_id, :default => 0, :null => false
      t.integer :priority_id, :default => 0, :null => false
      t.date :due_date
      t.integer :author_id, :default => 0, :null => false
      t.integer :assigned_to_id, :default => 0, :null => false

      t.timestamps
    end
  end
end
