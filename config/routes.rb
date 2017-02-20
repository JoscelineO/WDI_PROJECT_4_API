Rails.application.routes.draw do
  resources :assets
  resources :moodboards
  resources :users
  
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
