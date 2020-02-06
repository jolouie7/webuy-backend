class CategoriesController < ApplicationController
  def index
    categories = Category.all
    # render json: { categories: categories }
    render json: CategorySerializer.new(categories)
  end
end
