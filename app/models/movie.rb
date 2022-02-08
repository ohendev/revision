class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, :preview, :rating, presence: true
  validates :title, uniqueness: true
  validates :rating, inclusion: { in: 0.0..10.0 }
end
