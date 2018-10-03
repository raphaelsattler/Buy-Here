Rails.application.routes.draw do
  root to: "person#index"

  resources :person do
    collection do
      match "search" => "person#search", via: [:get, :post], as: :search
    end
  end
end
