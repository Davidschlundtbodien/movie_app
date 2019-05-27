class Movie < ApplicationRecord
  
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  validates :title, :plot, presence: true
  validates :year, numericality: { only_integer: true }
  validates :plot, length: { in: 20..500}

  def genre_names
    genres.map { |genre| genre.name }
  end

end
