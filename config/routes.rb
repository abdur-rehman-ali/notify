Rails.application.routes.draw do
  resources :users, only: [:index]
  devise_for :users
  post '/trade', to: 'users#trade'
  root to: 'home#index'
end
