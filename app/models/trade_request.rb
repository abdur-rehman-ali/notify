class TradeRequest < ApplicationRecord 
    belongs_to :user
    validates :sent_by, uniqueness: { scope: :user_id, message: "Request already sent" }
end