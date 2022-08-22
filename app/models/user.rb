class User < ApplicationRecord
  has_many :trade_requests, dependent: :destroy
  has_many :inventories
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
end
