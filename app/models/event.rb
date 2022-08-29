class Event < ApplicationRecord
  belongs_to :genre

  validates :name, :address, presence: true
end
