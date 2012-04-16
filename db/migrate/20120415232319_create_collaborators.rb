class CreateCollaborators < ActiveRecord::Migration
  def change
    create_table :collaborators do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
      add_index :collaborators, :name
      add_index :collaborators, :email, unique: true
  end
end
