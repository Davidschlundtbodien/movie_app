Rails.application.routes.draw do

  namespace :api do
    get "/single_actor" => "actors#single_actor"
    #Movie routes w/ REST syntax
    get "/movies/:id" => "movies#show"
    get "/movies" => "movies#index"
  end
end
