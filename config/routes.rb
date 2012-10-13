Merlin::Application.routes.draw do
  devise_for :users

  resources :teams do as_routes end

  resources :teams

  resources :leaves do as_routes end

  resources :leaves

  resources :users do as_routes end

  resources :users
  
  match 'home/' => 'home#index'
  match 'users/request_leave' => 'users#request_leave'
  
  match 'users/:id/request_leave' => 'users#request_leave'
  
  root :to => 'home#index'

end
