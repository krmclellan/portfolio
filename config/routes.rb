Rails.application.routes.draw do
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#welcome"
  get "/projects" => "pages#projects"
  get "/about" => "pages#about"
  get "/contact" => "pages#contact"
  get "/blog" => "pages#blog"
  get "/guestbook" => "pages#guestbook" #signup, login, logout link, show posts page (guestbook)
  
  resources :posts
 
  resources :articles
 
  get "/signup" => 'users#new'
  resources :users

  get "/login" => 'sessions#new'
  post "/login" => 'sessions#create'
  delete "/logout" => 'sessions#destroy'

end
