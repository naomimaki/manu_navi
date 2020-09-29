class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :date, null: false
      t.string :name, null: false
      t.text :comment, null: false
      t.integer :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
