Rails.application.routes.draw do
  resources :users, only: [:show]
  resources :login, controller: "sessions", only: [:new, :create, :destroy]
  resources :password_resets, only: [:new, :create, :edit, :update]
  root to: "person#index"
  resources :person do
    collection do
      match "search" => "person#search", via: [:get, :post], as: :search
    end
  end
end
