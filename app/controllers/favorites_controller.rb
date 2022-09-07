class FavoritesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @event = Event.find(params[:event_id])
    @user = User.find(params[:user_id])
    favorite = @user.favorites.find_by(event_id: @event.id)
    if favorite
      favorite.destroy
    else
      favorite = Favorite.new
      favorite.event = @event
      favorite.user = @user
      favorite.save
    end
  end
end