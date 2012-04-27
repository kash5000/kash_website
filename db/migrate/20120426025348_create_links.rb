class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :collaborator_id
      t.integer :project_id

      t.timestamps
    end
      add_index :links, :collaborator_id
      add_index :links, :project_id
      add_index :links, [:collaborator_id, :project_id], unique: true
  end
end
