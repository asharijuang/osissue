class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, :limit => 30, :default => "", :null => false
      t.text :description, :default => "", :null => false
      t.boolean :is_public, :default => true, :null => false

      t.timestamps
    end
  end
end
