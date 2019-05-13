Rails.application.routes.draw do

  namespace :api do
    get "/single_actor" => "actors#single_actor"
    get "/actor" => "actors#actor_query"
    get "/actor/:id" => "actors#actor_segment"
    post "/actor" => "actors#actor_body"
    #Movie routes w/ REST syntax
    get "/movies/:id" => "movies#show"
    get "/movies" => "movies#index"
  end
end
