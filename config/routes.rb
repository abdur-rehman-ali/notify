Rails.application.routes.draw do
  resources :users, only: [:index]
  resources :sent_items, only: [:create]
  resources :receive_items, only: [:create]
  devise_for :users
  post '/trade', to: 'users#trade'
  patch '/accept/:id', to: 'users#accept', as: 'accept'
  patch '/reject/:id', to: 'users#reject', as: 'reject'
  delete '/destroy/:id', to: 'users#destroy', as: 'destroy'
  get '/deal/:id', to: 'users#deal', as: 'deal'
  root to: 'home#index'
end
