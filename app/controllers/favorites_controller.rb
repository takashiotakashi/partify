class FavoritesController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    return if current_user.favorites.find_by(id: @event.id)

    favorite = Favorite.new
    favorite.event = @event
    favorite.user = current_user
    favorite.save
    redirect_to @event, status: :see_other
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to event_path(@favorite.event), status: :see_other
  end
end