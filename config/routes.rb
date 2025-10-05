Rails.application.routes.draw do
  root 'chatroom#home'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  resources :user
  resources :message
end
