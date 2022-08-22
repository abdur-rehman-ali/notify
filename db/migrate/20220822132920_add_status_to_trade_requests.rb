class AddStatusToTradeRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :trade_requests, :status, :integer
  end
end
