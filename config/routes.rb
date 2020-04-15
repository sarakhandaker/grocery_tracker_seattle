Rails.application.routes.draw do
  resources :users, except: [:destroy, :index]
  resources :grocery_stores, except: [:destroy, :edit, :update, :create, :new]
  resources :visits
  resources :items, except: [:destroy, :edit, :update, :create, :new]
  get '/login' => 'sessions#new', as: "login"
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy', as: "logout"
  get '/signup' => 'users#new', as: 'signup'
  root 'application#home'
  get '/interesting_facts'=> 'application#interesting_facts'
  get '/users/:id/covid' => 'users#covid', as: 'covid'
  patch '/users/:id/covid_notify' => 'users#covid_notify'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
