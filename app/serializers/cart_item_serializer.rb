class CartItemSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :count, :total
  belongs_to :product
  belongs_to :order
  # attributes :id
end