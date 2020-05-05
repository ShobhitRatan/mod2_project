Rails.application.routes.draw do

  resources :orders
  resources :locations
  resources :users, only: [:new, :create, :show, :delete]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :plants, only: [:index, :show]
  resources :tools, only: [:index, :show]
end
