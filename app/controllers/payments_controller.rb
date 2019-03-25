class PaymentsController < ApplicationController
  before_action :set_order

  def new
    @order = Order.find(params[:order_id])
  end

  def create
    @order.update(state: 'paid')
    redirect_to order_path(@order)
  end

  private

  def set_order
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
  end
end
