class Event < ApplicationRecord
  belongs_to :genre
  #geocoded_by :address
  #after_validation :geocode, if: :will_save_change_to_address?
  validates :name, :address, presence: true
end
