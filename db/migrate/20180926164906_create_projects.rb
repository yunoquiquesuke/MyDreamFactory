class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :dream_id
      t.integer :project_level
      t.date :due
      t.integer :is_done

      t.timestamps
    end
  end
end
