class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.date :due_date
      t.integer :owner_id
      t.integer :milestone_id
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
