class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.string :category_name
      t.references :user, null: false, foreign_key: true
      t.integer :category_id

      t.timestamps
    end
  end
end
