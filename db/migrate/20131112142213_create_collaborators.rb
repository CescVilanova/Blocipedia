class CreateCollaborators < ActiveRecord::Migration
  def change
    create_table :collaborators do |t|
      t.boolean :access
      t.integer :wiki_id
      t.integer :user_id

      t.timestamps
    end
  end
end
