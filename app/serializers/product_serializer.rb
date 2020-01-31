class ProductSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :rating, :description, :image
  # attributes :id
end
