Rails.application.routes.draw do
  root to: "people#index"

  resources :people do
    collection do
      match "search" => "people#search", via: [:get, :post], as: :search
    end
  end
end
