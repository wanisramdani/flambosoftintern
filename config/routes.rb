Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root to: 'pages#home'
  root 'pages#home'



  namespace :admin do
    root 'dashboard#index'
    resources :categories
    resources :products
  end

  namespace :user do
    root 'home#index'
  end

end
