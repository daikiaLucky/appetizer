Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: {   registrations: 'users/registrations',sessions: 'users/sessions' }
  root to: "posts#index" 
  get "posts/game"
  get 'posts/cooking'
  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end