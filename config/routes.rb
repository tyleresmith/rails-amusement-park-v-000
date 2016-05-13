Rails.application.routes.draw do
  root 'users#new'
  post '/rides/:id' => 'rides#create'
  resources :users, :sessions, :attractions
  get '/signin' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'
end
