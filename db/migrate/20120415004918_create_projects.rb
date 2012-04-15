class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :start
      t.date :end

      t.timestamps
    end
      add_index :projects, :name, unique: true
  end
end
