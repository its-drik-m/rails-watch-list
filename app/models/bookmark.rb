class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 5 }

  belongs_to :movie
  belongs_to :list

  validates_uniqueness_of :movie_id, scope: [:list_id]
end
