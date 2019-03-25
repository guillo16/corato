class OrdersController < ApplicationController

  def create
    mueble = Mueble.find(params[:mueble_id])
    order  = Order.create!(mueble_sku: mueble.sku, amount: mueble.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end
end
