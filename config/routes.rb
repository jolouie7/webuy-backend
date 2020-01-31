Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products
  resources :orders
  resources :cart_items
  resources :users
  post '/login', to: 'auth#create'
  # do we need a signup route?
end
