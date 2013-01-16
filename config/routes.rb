Merlin::Application.routes.draw do

  resources :roles do as_routes end

  devise_for :users,  :controllers => { :registrations => "users/registrations" }

  resources :teams do as_routes end

  resources :teams

  resources :leaves do as_routes end

  resources :leaves

  resources :users do as_routes end

  match 'home/' => 'home#index'
    
  match 'users/:id/request_leave' => 'users#request_leave'
  
  match 'users/send_email' => 'users#send_email'

  root :to => 'home#index'

end
