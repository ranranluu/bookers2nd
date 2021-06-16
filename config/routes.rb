Rails.application.routes.draw do


  devise_for :users
  root to: 'homes#top'
  get '/home/about', to: 'homes#about'
  
  resources :books, only: [:update, :create, :index, :show, :destroy, :edit]
  resources :users, only: [:show, :edit, :update, :index]
end
