class EventsController < ApplicationController
  def index
    # @events = Event.all

    @events = Event.where(genres: current_user.fav_genre)

    @user_location = [current_user.latitude, current_user.longitude] if params[:address] == "user"

    @user_location = [params[:lat], params[:lng]] if params[:lat].present? && params[:lng].present?

    @events = @events.near(@user_location, 10)

    if @events.present?
      @markers = @events.geocoded.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude,
          info_window: render_to_string(partial: "info_window", locals: { event: event })
        }
      end
    end

    @user_marker = {
      lat: @user_location.first,
      lng: @user_location.last,
      image_url: helpers.asset_url("usermarker.png")
      } if @user_location

  end

  def show
    set_event
  end

  def my_favorites
    my_favorites = Favorite.includes(:event).where(user: current_user)
    @events = my_favorites.map{ |favorite| favorite.event}
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
