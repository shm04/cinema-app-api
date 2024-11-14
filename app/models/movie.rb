class Movie < ApplicationRecord
  has_many :functions
  
  validates :title, presence: true
  validates :description, presence: true
  validates :genre, presence: true
  validates :duration, presence: true
end