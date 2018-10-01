Rails.application.routes.draw do
  root to: "people#index"

  resource :person
end
