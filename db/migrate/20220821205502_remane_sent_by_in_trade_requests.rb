class RemaneSentByInTradeRequests < ActiveRecord::Migration[5.2]
  def change
    rename_column :trade_requests, :sent_by, :sent_to
  end
end
