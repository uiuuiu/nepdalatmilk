Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  namespace :admin do
    resources :admin_home
    resources :categories
  end
  resources :milk_products
  resources :cart
end
