Rails.application.routes.draw do
  root "products#index"
  resources :category_products
  resources :categories
  resources :products
  resources :orders
  resources :cart_items
  resources :users
  resources :charges, only: [:create]
  post '/users', to: 'user#create'
  post '/signin', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
