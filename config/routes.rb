Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  namespace :admin do
    resources :admin_home
    resources :products do
      resources :posts
    end
    resources :categories
  end
  resources :milk_products
  resources :cart
end
