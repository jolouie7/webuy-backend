class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
  has_many :products, serializer: ProductSerializer
end
