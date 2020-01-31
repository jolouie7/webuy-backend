class User < ApplicationRecord
  has_many :orders
  has_many :products, through: :orders

  has_secure_password
  # has_many :sellers, class_name: "User", foreign_key: "buyer_id"
  # has_many :buyers, class_name: "User", foreign_key: "seller_id"



  # ----------- This part doesn't work -------------
  # has_many :seller_orders, foreign_key: :buyer_id, class_name: "Order"
  # has_many :sellers, through: :seller_orders, source: :seller

  # has_many :buyers_orders, foreign_key: :seller_id, class_name: "Order"
  # has_many :buyers, through: :buyers_orders, source: :buyer
  # ----------- This part doesn't work -------------

  # has_many :sellers, foreign_key: :seller_id, class_name: "Order"
  # has_many :buyers, through: :sellers

  # has_many :buyers, foreign_key: :buyer_id, class_name: "Order"
  # has_many :sellers, through: :buyers

  validates :username, uniqueness: true, presence: true
end
