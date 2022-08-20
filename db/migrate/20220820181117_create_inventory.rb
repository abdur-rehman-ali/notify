class CreateInventory < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.string :name
      t.integer :quantity
      t.references :user, foreign_key: true
    end
  end
end
