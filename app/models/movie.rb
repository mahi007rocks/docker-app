class Movie < ApplicationRecord
  validates :name, presence: true
  validates :director, presence: true
  validates :genre, presence: true
end
