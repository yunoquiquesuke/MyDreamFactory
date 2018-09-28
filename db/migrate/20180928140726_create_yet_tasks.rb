class CreateYetTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :yet_tasks do |t|
      t.string :name
      t.integer :yet_project_id
      t.integer :is_done

      t.timestamps
    end
  end
end
