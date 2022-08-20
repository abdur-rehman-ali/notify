class CreateTradeRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :trade_requests do |t|
      t.integer :sent_by
      t.references :user, foreign_key: true
    end
  end
end
