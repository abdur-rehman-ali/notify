Rails.application.routes.draw do
  resources :users, only: [:index]
  resources :sent_items, only: [:create]
  resources :receive_items, only: [:create]
  devise_for :users
  post '/trade', to: 'users#trade'
  get '/deal/:id', to: 'users#deal', as: 'deal'
  root to: 'home#index'
end
