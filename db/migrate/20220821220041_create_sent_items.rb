class CreateSentItems < ActiveRecord::Migration[5.2]
  def change
    create_table :sent_items do |t|
      t.string :name
      t.integer :quantity
      t.references :trade_request, foreign_key: true
    end
  end
end
