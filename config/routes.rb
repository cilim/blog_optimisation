Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, only: [:show, :index] do
    resources :comments
  end

  devise_for :users

  namespace :admin do
    root "posts#index"
    resources :posts
  end
end
