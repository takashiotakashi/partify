require 'open-uri'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # after_create : #método para importar gosto musical

  has_many :reviews, dependent: :destroy
  belongs_to :fav_genre, class_name: 'Genre', optional: true

  # validates :address, presence: true, on: :update Por que obrigar a colocar endereço?

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:spotify]

  after_create :grab_genres

  # has_one_attached :photo
  # has_one :favorites, dependent: :destroy # caso implantemos favorites

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

  private

  # def select_top_occurrence
  #   sort_by { |i| grep(i).length }.last
  # end

  def grab_genres

    url = "https://api.spotify.com/v1/me/top/artists"
    user_serialized = URI.open(url, "Authorization" => "Bearer #{User.last.token}", "Content-Type" => "application/json").read # mudar user!
    parsed = JSON.parse(user_serialized)

    spotify_genres = []
    parsed["items"].each do |artist|
      artist["genres"].each do |genre|
        spotify_genres << genre.split # considerar manter nomes compostos, se criarmos filtro adequado para escopo etc
      end
    end
    top_genre = spotify_genres.flatten.tally.max_by{ |k,v| v}.first

    genre = Genre.find_by(name: top_genre)

    self.fav_genre = genre if genre
    self.save!
  end
end
