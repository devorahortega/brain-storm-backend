Rails.application.routes.draw do
  get "/card" => "cards#index"
  get "/card/:id" => "cards#show"
  post "/card" => "cards#create"
  patch "/card/:id" => "cards#update"

  get "idea" => "ideas#index"
  get "idea/:id" => "idea#show"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
end
