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
  end
end
