Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "dashboards#index"
  # root "carts#show"
  resources :categories , only: [:index]
  resources :sub_categories
  resources :dashboards
  
  resources :products do
     get '/page/:page', action: :index, on: :collection
  end

  resources :users
  post '/auth/login' , to: 'authentication#login'
  
  resources :carts
  resources :product_carts
  resources :orders
  resources :order_items  
end
