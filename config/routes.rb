Rails.application.routes.draw do
  resources :sauces
  resources :breads
  resources :selfie_posts
  resources :orders
  resources :users
  resources :drinks
  resources :payments
  resources :employees
  resources :sandwiches
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
