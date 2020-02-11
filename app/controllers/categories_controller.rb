class CategoriesController < ApplicationController
  skip_before_action :authorized
  
  def index
    categories = Category.all
    # render json: { categories: categories }
    # render json: CategorySerializer.new(categories, include: [:products]).serialized_json
    # options[:include] = [:products, :'products.price', :'products.name']
    options = {}
    # options[:include] = [:products, :"products.name", :"products.id"]
    # render json: CategorySerializer.new([categories, categories], options).serialized_json
    render json: categories, :include => [:products]
  end
end
