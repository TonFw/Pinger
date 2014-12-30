Rails.application.routes.draw do
  # Root request
  root to: "home#index"

  # CRUD Resources
  resources :pings
  resources :targets
  resources :schedules

  # Devise session manager
  devise_for :users
end
