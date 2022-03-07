Rails.application.routes.draw do
  get "/cards" => "cards#index"
  get "/cards/:id" => "cards#show"
  post "/cards" => "cards#create"
  patch "/cards/:id" => "cards#update"

  get "ideas" => "ideas#index"
  get "ideas/:id" => "idea#show"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
end
