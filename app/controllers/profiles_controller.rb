class ProfilesController < ApplicationController
  def new
    @profile = User.new
  end

  def create
    @profile = current_user
    if @profile.update!(user_params)
      redirect_to events_path(address: :user)
    else
      render :new, status: :unprocessable_entity
    end
  end

private

  def user_params
    params.require(:user).permit(:address)
  end
end
