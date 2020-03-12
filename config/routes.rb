Rails.application.routes.draw do
  resources :clients
  resources :farms
  resources :haunteds
  resources :weeks
  resources :users
  resources :helps
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
