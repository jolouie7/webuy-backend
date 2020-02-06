class CategoryProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id
  has_one :product_id
  has_one :category_id
end
