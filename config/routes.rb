Rails.application.routes.draw do
  resources :users, only: [:show]
  resources :login, controller: "sessions", only: [:new, :create, :destroy]
  resources :password_resets, only: [:new, :create, :edit, :update]

  root to: "people#index"
  resource :person
end
