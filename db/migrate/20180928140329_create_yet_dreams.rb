class CreateYetDreams < ActiveRecord::Migration[5.2]
  def change
    create_table :yet_dreams do |t|
      t.string :name

      t.timestamps
    end
  end
end
