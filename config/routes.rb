Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  get 'sessions/login' # form đăng nhập
  get 'accounts/signup',to: "accounts#new" #form đăng ký
  get 'logout',to: "sessions#destroy"
  # get 'sessions/welcome'
  # get 'accounts/new'
  # get 'accounts/create'
  post "/login", to: "sessions#create" #login 
  post "/register", to: "accounts#create" # register 
 
  resources :microposts
  resources :users
  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
