class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  # validates :rating, numericality: { greater_than_or_equal_to: 0 }
  # validates :rating, numericality: { less_than_or_equal_to: 10 }
  validates :overview, presence: true

end
