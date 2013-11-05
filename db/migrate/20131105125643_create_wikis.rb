class CreateWikis < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.string :name
      t.text :body
      t.boolean :private

      t.timestamps
    end
  end
end
