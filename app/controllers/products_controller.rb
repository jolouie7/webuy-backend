class ProductsController < ApplicationController
  skip_before_action :authorized, except: [:update]

  def index
    products = Product.all
    render json: { products: products }
  end

  def show
    product = Product.find(params[:id])
    render json: { product: product }
  end

  def create
    product = Product.create(product_params)
    render json: { product: product }
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    render json: { product: product }
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :rating, :description, :image)
  end
end
