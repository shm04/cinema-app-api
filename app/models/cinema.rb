class Cinema < ApplicationRecord
  has_many :rooms

  validates :cinema_name, presence: true
  validates :address, presence: true
  validates :isOpen, inclusion: { in: [true, false] }
end