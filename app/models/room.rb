class Room < ApplicationRecord
  belongs_to :cinema
  has_many :seats
  has_many :functions

  validates :room_name, presence: true
  validates :room_type, presence: true
end
