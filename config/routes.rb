Blog::Application.routes.draw do
  #get "welcome/index"
  
  resources :posts
  resources :comments

  root 'welcome#index'

end