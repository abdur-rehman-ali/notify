class TradeRequest < ApplicationRecord 
    has_many :sent_items, dependent: :destroy
    has_many :receive_items, dependent: :destroy
    belongs_to :user
    validates :sent_to, uniqueness: { scope: :user_id, message: "Request already sent" }

    enum status: { ACCEPT: 0, REJECT:1}
end