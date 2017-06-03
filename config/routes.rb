Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  namespace :admin do
    resources :admin_home
    resources :products
    resources :categories
  end
  resources :milk_products
  resources :cart
end
