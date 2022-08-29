class Genre < ApplicationRecord
  has_many :events
  has_many :places

  validate :name, presence: true
end
