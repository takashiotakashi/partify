class Place < ApplicationRecord
  belongs_to :genre
  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
end
