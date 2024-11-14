class Show < ApplicationRecord
  belongs_to :room
  belongs_to :movie

  validates :movie, presence: true
  validates :room, presence: true
  validates :started, presence: true
  validates :finished, presence: true
end
