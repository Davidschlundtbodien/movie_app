class Movie < ApplicationRecord
  validates :title, :plot, presence: true
  validates :year, numericality: { only_integer: true }
  validates :plot, length: { in: 20..500}

end
