Rails.application.routes.draw do
  resources :users
  resources :grocery_stores
  resources :visits
  resources :items
  get '/login' => 'sessions#new', as: "login"
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy', as: "logout"
  get '/signup' => 'users#new', as: 'signup'
  root 'application#home'
  get '/interesting_facts'=> 'application#interesting_facts'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
