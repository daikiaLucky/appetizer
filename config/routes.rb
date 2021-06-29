Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: "posts#index" 
  resources :posts, only: [:new, :create, :destroy]
  resources :users, only: [:show]
  
end
