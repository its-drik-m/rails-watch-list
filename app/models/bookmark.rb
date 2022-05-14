class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }

  has_one :movie
  has_one :list

  belongs_to :movie
  belongs_to :list
end
