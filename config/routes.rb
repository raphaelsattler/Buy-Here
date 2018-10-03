Rails.application.routes.draw do
  resources :users, only: [:show]
  resources :login, controller: "sessions", only: [:new, :create, :destroy]
  resources :person do
    collection do
      match "search" => "person#search", via: [:get, :post], as: :search
    end
  end
end
