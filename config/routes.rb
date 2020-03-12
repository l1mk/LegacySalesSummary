Rails.application.routes.draw do
  root 'sessions#index'
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  resources :clients
  resources :farms
  resources :haunteds
  resources :weeks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
