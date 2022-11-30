Rails.application.routes.draw do
  get "votes/new"
  get "votes/create"
  devise_for :users
  root to: "pages#home"

  get "posts/new", to: "posts#new"
  post "posts", to: "posts#create"



  resources :posts, only: [:index, :show, :new, :create, :destroy]

end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  # root "articles#index"
    # post "posts", to: "devs#create"
