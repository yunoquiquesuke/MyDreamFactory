class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :project_id
      t.date :due
      t.integer :is_done
      t.integer :duration
      t.integer :quality

      t.timestamps
    end
  end
end
