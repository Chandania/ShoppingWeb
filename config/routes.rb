Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories , only: [:index]
  resources :sub_categories , only: [:index , :show]
  # resources :products
  resources :products do
     get '/page/:page', action: :index, on: :collection
  end


  resources :users
  post '/auth/login' , to: 'authentication#login'


  # resources :carts 
  resources :orders
  resources :order_items 
  # root 'users#index'
    
   
end
