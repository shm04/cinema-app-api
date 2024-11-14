class Seat < ApplicationRecord
  belongs_to :room

  validates :row, presence: true
  validates :number, presence: true
  validates :taken, inclusion: { in: [true, false] }
end