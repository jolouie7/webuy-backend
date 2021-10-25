class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :shipped, :total, :paid, :tracking_number, :complete
  belongs_to :user
end
