Rails.application.routes.draw do

  get '/login' => 'sessions#new' 
  post '/login' => 'sessions#create' 
  post '/logout' => 'sessions#destroy' 
  root 'welcome#home' 
  resources :tool_orders
  resources :plant_orders
  resources :orders
  resources :locations
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :plants, only: [:index, :show]
  resources :tools, only: [:index, :show]
end
