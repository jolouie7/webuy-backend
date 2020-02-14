class ChargesController < ApplicationController
  skip_before_action :authorized, except: [:update]

  def create
    Stripe.api_key = ENV["STRIPE_SECRET_KEY"]

    # order = Order.find(params[:orderId])
    # amount = order.shoes.sum(:cost) * 100

    charge = Stripe::Charge.create(
      # :customer => customer.id,
      :amount => 123,
      :description => "OG Store",
      :currency => "usd",
      :source => params[:token]
    )

  rescue Stripe::CardError => e
    flash[:errors] = e.message
    redirect_to charges_path
  end
end
