require 'open-uri'
class User < ApplicationRecord
# Include default devise modules. Others available are:

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:spotify]

  after_create :set_fav_genre

  def self.find_for_oauth(auth)
    # Create the user params
    user_params = auth.slice("provider", "uid")
    user_params.merge! auth.info.slice("email", "name")
    user_params[:picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h
    # Finish creating the user params

    # Find the user if there was a log in
    user = User.find_by(provider: auth.provider, uid: auth.uid)

    # If the User did a regular sign up in the past, find it
    user ||= User.find_by(email: auth.info.email)

    # If we had a user, update it
    if user
      user.update(user_params)
    # Else, create a new user with the params that come from the app callback
    else
      user = User.new(user_params)
      # create a fake password for validation
      user.password = Devise.friendly_token[0, 20]
      user.save!
    end

    return user
  end

  def grab_user_genres
    url = "https://api.spotify.com/v1/me/top/artists"
    user_serialized = URI.open(url, "Authorization" => "Bearer #{self.token}", "Content-Type" => "application/json").read
    parsed = JSON.parse(user_serialized)
    spotify_genres = []
    parsed["items"].each do |artist|
      artist["genres"].each do |genre|
        spotify_genres << genre
      end
    end

    return spotify_genres.tally.sort_by { |_k, v| v }.reverse.to_h
  end

  def cloud
    genre_hash = grab_user_genres
    genre_hash.take(20).map do |k, v|
      { x: k, value: v * 10 }
    end
  end

  private

  def set_fav_genre
    url = "https://api.spotify.com/v1/me/top/artists"
    user_serialized = URI.open(url, "Authorization" => "Bearer #{self.token}", "Content-Type" => "application/json").read
    parsed = JSON.parse(user_serialized)
    spotify_genres = []
    parsed["items"].each do |artist|
      artist["genres"].each do |genre|
        spotify_genres << genre.split # considerar manter nomes compostos, se criarmos filtro adequado para escopo etc
      end
    end
    top_genre = spotify_genres.flatten.tally.max_by { |_k, v| v }.first

    self.fav_genre = top_genre if top_genre
    self.save!
  end
end
