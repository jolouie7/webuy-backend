class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :price, :rating, :description, :image
end
