class MueblesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @muebles = Mueble.all
  end

  def show
    @mueble = Mueble.find(params[:id])
  end
end
