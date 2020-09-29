class CreateManuals < ActiveRecord::Migration[6.0]
  def change
    create_table :manuals do |t|
      t.string :title, null: false
      t.text :explanation,null: false
      t.integer :user_id, null: false, foreign_key: true
      t.integer :genre_id, null: false
      t.timestamps
    end
  end
end

