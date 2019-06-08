Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  require 'sidekiq/web'

  resources :orders, except: [:edit, :update]
  resources :bills
  resources :penalties, only: [:destroy]
  resources :payments, only: [:create]

  mount Sidekiq::Web => '/sidekiq'
end
