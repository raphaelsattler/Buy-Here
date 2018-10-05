Rails.application.routes.draw do
  resources :users, only: [:show]
  resources :login, controller: "sessions", only: [:new, :create, :destroy]

  resources :roles, only: [:index, :create, :edit, :update] do
    collection do
      match "search" => "roles#search", via: [:get, :post], as: :search
    end
  end

  resources :people

  root "sessions#new"
end
