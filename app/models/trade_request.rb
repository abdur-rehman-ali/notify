class TradeRequest < ApplicationRecord 
    has_many :sent_items
    belongs_to :user
    validates :sent_to, uniqueness: { scope: :user_id, message: "Request already sent" }
end