require "http"

system "clear"
puts "Movie app terminal test!"

puts response = HTTP.get("https://localhost:3000/api/movies")

movies = response.parse


movies.each do |movie|
  puts "Title: #{movie["title"]}"
  puts "year: #{movie["year"]}"
  puts "plot: #{movie["plot"]}"
end