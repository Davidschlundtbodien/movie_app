json.array! @movies.each do |movie|
  json.id movie.id
  json.title movie.title
  json.year movie.year
  json.genres movie.genre_names
  json.director movie.director
  json.english movie.english
  json.plot movie.plot
end  