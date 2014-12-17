class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :subject
      t.text :description
      t.integer :project_id
      t.integer :priority_id
      t.integer :issue_status_id

      t.timestamps
    end
  end
end
