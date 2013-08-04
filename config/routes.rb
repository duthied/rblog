# config/routes.rb
Blog::Application.routes.draw do
  resources :roles

  devise_for :users
  #get "welcome/index"
  
  resources :posts do
    resources :comments
  end
  
  root 'welcome#index'

end