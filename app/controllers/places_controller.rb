class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    set_place
  end

  def new
    @place = Place.new
  end

  private

  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:places).permit(:name, :address, :description, :price)
  end
end
