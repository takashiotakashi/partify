class EventsController < ApplicationController
  def index
    @events = Event.all
    #@events = Event.where(genre: current_user.genre)
    #@places = Place.where(city: "São Paulo")
  end

  def show
    set_event
  end

  def new
    @event = Event.new
  end

  private

  def set_place
    @event = Event.find(params[:id])
  end

  def place_params
    params.require(:events).permit(:name, :address, :description, :price)
  end
end
