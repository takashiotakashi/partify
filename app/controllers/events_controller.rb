class EventsController < ApplicationController
  def index
    # @events = Event.all
    @events = Event.where(genre_id: current_user.fav_genre_id)
    # @events = Event.where(genres: current_user.fav_genre_id) implementar lógica para que match se genres do events tiver matches com o genres do user

    @events = @events.near([current_user.latitude, current_user.longitude], 10) if params[:address] == "user"

    @events = @events.near([params[:lat], params[:lng]], 10) if params[:lat].present? && params[:lng].present?

    if @events.present?
      @markers = @events.geocoded.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude,
          info_window: render_to_string(partial: "info_window", locals: { event: event })
        }
      end
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
