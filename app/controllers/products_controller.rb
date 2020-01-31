class ProductsController < ApplicationController
  def index
    products = Product.all
    # render json: ProductSerializer.new(products).serialized_json
    render json: { products: products }
  end

  def show
    product = Product.find(params[:id])
    # render json: ProductSerializer.new(product).serialized_json
    render json: { product: product }
  end

  def create
    product = Product.create(product_params)
    # render json: ProductSerializer.new(product).serialized_json
    render json: { product: product }
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    # render json: ProductSerializer.new(product).serialized_json
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
