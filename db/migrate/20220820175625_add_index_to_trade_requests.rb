class AddIndexToTradeRequests < ActiveRecord::Migration[5.2]
  def change
    add_index :trade_requests, [:user_id, :sent_by], unique: true
  end
end
