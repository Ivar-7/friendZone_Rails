Rails.application.routes.draw do
  devise_for :users
  resources :friends
  get 'home/about'
  root to: 'home#index'
end
