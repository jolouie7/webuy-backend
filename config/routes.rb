Rails.application.routes.draw do
  resources :category_products
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products
  resources :orders
  resources :cart_items
  resources :users
  resources :charges, only: [:create]
  # do we need a signup route?
  post '/users', to: 'user#create'
  post '/signin', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
