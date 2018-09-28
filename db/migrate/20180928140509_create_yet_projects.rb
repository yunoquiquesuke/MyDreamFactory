class CreateYetProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :yet_projects do |t|
      t.string :name
      t.integer :yet_dream_id
      t.date :due
      t.integer :is_done

      t.timestamps
    end
  end
end
