Rails.application.routes.draw do

  namespace :api do
    #Actor routes
    get "/actors" => "actors#index"
    get "/actors/:id" => "actors#show"
    post "/actors" => "actors#create"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"
    #Movie routes
    get "/movies/:id" => "movies#show"
    get "/movies" => "movies#index"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"
    #Movie Genres
    post "/movie_genres" => "movie_genres#create"
  end
end
