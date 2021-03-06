# config/routes.rb
Blog::Application.routes.draw do
  
  resources :role_permissions

  devise_for :users, :path => 'user'
  
  resources :roles
  resources :users
  
  #get "welcome/index"
  
  resources :posts do
    resources :comments
  end
  
  root 'welcome#index'

end