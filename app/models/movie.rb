class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, :preview, :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }
end
