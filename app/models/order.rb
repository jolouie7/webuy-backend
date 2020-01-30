class Order < ApplicationRecord
  belongs_to :user

  # ----------- This part doesn't work -------------
  # belongs_to :seller, foreign_key: "seller_id", class_name: "User"
  # belongs_to :buyer, foreign_key: "buyer_id", class_name: "User"
  # ----------- This part doesn't work -------------

  # belongs_to :seller, class_name: "User"
  # belongs_to :buyer, class_name: "User"

  has_many :cart_items
  has_many :products, through: :cart_items
end
