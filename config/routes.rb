Rails.application.routes.draw do

  namespace :api do
    get "/single_actor" => "actors#single_actor"
  end
end
