class CategoriesController < ApplicationController
  skip_before_action :authorized
  
  def index
    categories = Category.all
    options = {}
    render json: categories, :include => [:products]
  end
end
