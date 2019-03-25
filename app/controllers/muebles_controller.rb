class MueblesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @muebles = Mueble.all
    if params["category"]
      @muebles = Mueble.where(category: params["category"])
    elsif params["created_at"]
      @muebles = Mueble.order(created_at: :desc)
      elsif params["price_cents"]
      @muebles = Mueble.order(price_cents: :desc)
      elsif params["min_price_cents"]
      @muebles = Mueble.where("price_cents BETWEEN ? AND ?", params["min_price_cents"], params["max_price_cents"])
    else
      @muebles
    end
  end

  def show
    @mueble = Mueble.find(params[:id])
  end
end
