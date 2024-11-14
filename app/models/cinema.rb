class Cinema < ApplicationRecord
  has_many :theaters

  validates :cinema_name, presence: true
  validates :address, presence: true
  validates :isOpen, inclusion: { in: [true, false] }
end