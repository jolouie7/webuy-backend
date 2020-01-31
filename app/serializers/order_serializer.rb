class OrderSerializer < ActiveModel::Serializer
  # not sure if i need user_id
  include FastJsonapi::ObjectSerializer
  attributes :shipped, :total, :paid, :tracking_number, :complete
  belongs_to :user
  # attributes :id
end
