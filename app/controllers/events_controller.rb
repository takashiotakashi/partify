class EventsController < ApplicationController
  def index
    @events = Event.all
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial: "info_window", locals: {event: event}),
        image_url: helpers.asset_url("REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS")
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

  def set_place
    @event = Event.find(params[:id])
  end

  def place_params
    params.require(:events).permit(:name, :address, :description, :price)
  end
end
