class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :collaborator_id
      t.integer :project_id
      t.text :content

      t.timestamps
    end
      add_index :posts, :created_at
      add_index :posts, :collaborator_id
      add_index :posts, :project_id
  end
end
