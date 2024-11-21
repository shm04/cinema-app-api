class Movie < ApplicationRecord
  belongs_to :cinema
  has_many :shows
  
  validates :title, presence: true
  validates :description, presence: true
  validates :genre, presence: true
  validates :duration, presence: true
end