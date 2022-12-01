Rails.application.routes.draw do
  get "votes/new"
  get "votes/create"
  devise_for :users
  root to: "pages#home"

  get "posts/new", to: "posts#new"
  post "posts", to: "posts#create"

  resources :posts, only: [:index, :show, :new, :create, :destroy] do
    resources :comments, only: [:new, :create, :show, :destroy]
  end
end
