class Event < ApplicationRecord
  # belongs_to :genre
  has_many :favorites, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  
end
