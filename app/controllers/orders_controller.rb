class OrdersController < ApplicationController
  def index
    orders = Order.all
    render json: { orders: orders }
  end

  def show
    order = Order.find(params[:id])
    render json: { order: order }
  end

  def create
    order = Order.create(order_params)
    render json: { order: order }
  end

  def update
    order = Order.find(params[:id])
    order.update(order_params)
    render json: { order: order }
  end

  def destroy
    order = Order.find(params[:id])
    order.destroy
  end

  private
  def order_params
    params.require(:order).permit(:user_id, :shipped, :total, :paid, :tracking_number, :complete)
  end
end
