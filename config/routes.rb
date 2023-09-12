Rails.application.routes.draw do
  devise_for :users
  resources :friends
  get 'home/about'
  root to: 'home#index'

  # Undefined routes
  match '*path', to: 'home#not_found', via: :all
end
