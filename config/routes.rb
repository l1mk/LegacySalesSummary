Rails.application.routes.draw do
  root 'sessions#index'
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/auth/github/callback' => 'sessions#create'
  get '/auth/facebook/callback' => 'sessions#create'
  #match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  

  resources :clients
  resources :users do 
    resources :weeks do 
      resources :haunteds
      resources :farms 
    end
  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
