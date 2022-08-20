Rails.application.routes.draw do
  resources :users, only: [:index]
  devise_for :users
  post '/trade', to: 'users#trade'
  get '/deal/:id', to: 'users#deal', as: 'deal'
  root to: 'home#index'
end
