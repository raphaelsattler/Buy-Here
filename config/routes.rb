Rails.application.routes.draw do
  resources :users, only: [:show]
  resources :login, controller: "sessions", only: [:new, :create, :destroy]
end
