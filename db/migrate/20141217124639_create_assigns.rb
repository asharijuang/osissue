class CreateAssigns < ActiveRecord::Migration
  def change
    create_table :assigns do |t|
      t.integer :ticket_id
      t.integer :user_id

      t.timestamps
    end
  end
end
