Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :messages
  resources :users, only: [:edit, :update]
  resources :rooms
end
