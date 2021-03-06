Rails.application.routes.draw do
  get 'sessions/new'
  root 'pages#index'
  
  
  resources :users
  resources :tasks
  
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
