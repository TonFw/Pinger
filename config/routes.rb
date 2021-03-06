Rails.application.routes.draw do
  # Just base CRUD nested resources
  resources :targets do
    resources :schedules do
      resources :pings
    end
  end

  # Custom URLs
  get 'pings/history' => 'pings#history', as: :pings_history

  # Root request
  root to: "home#index"

  # CRUD Resources  resources :targets
  # Devise session manager
  devise_for :users
end