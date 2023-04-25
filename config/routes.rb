Rails.application.routes.draw do
  resources :skateboards
  resources :decks
  resources :trucks
  resources :bearings
  resources :wheels
  get 'users/new'
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end