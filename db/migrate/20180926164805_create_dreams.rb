class CreateDreams < ActiveRecord::Migration[5.2]
  def change
    create_table :dreams do |t|
      t.string :name
      t.date :due
      t.integer :is_done

      t.timestamps
    end
  end
end
