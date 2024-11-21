class Cinema < ApplicationRecord
  has_many :rooms
  has_many :movies

  validates :cinema_name, presence: true
  validates :address, presence: true
  validates :isOpen, inclusion: { in: [true, false] }
end