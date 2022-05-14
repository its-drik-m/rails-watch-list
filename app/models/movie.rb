class Movie < ApplicationRecord
  validates :title, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :overview, presence: true

  has_many :bookmarks
end
