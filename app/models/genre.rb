class Genre < ApplicationRecord
  has_many :events
  has_many :places

  validates :name, presence: true
end
