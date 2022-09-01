class EventsController < ApplicationController
  def index
    #@events = Event.all

    @events = Event.where(genre_id: current_user.fav_genre_id)
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end


  end

  def show
    set_event
  end

  def new
    @event = Event.new
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def place_params
    params.require(:events).permit(:name, :address, :description, :price)
  end
end
