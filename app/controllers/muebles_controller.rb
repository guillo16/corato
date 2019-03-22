class MueblesController < ApplicationController
  def index
    @muebles = Mueble.all
  end

  def show
    @mueble = Mueble.find(params[:id])
  end
end
