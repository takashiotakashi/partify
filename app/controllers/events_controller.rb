class EventsController < ApplicationController
  def index
    @events = Event.all
    # The `geocoded` scope filters only events with coordinates
    @markers = @event.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
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
