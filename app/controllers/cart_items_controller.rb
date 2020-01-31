class CartItemsController < ApplicationController
  def index
    items = CartItem.all
    # render json: CartItemSerializer.new(items).serialized_json
    render json: { items: items }
  end

  def show
    item = CartItem.find(params[:id])
    # render json: CartItemSerializer.new(item).serialized_json
    render json: { item: item }
  end

  def create
    item = CartItem.create(item_params)
    # render json: CartItemSerializer.new(item).serialized_json
    render json: { item: item }
  end

  def update
    item = CartItem.find(params[:id])
    item.update(item_params)
    # render json: CartItemSerializer.new(item).serialized_json
    render json: { item: item }
  end

  def destroy
    item = CartItem.find(params[:id])
    item.destroy
  end

  private
  def item_params
    # not sure if i can do cart_item
    params.require(:cart_item).permit(:product_id, :order_id, :count, :total)
  end
end
