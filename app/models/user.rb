class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :music_tastes
  has_many :genres, through: :music_tastes
  has_many :reviews, dependent: :destroy

  validates :name, :address, :age, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: :spotify

  has_one_attached :photo
  # has_one :favorites, dependent: :destroy # caso implantemos favorites
end
