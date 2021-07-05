Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: "posts#index" 
  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end