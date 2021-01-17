Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homepage#index'
  devise_for :users, path: 'auth', path_names: { sign_in: 'login',
     sign_out: 'logout', password: 'secret',
      confirmation: 'verification',
       unlock: 'unblock',
        registration: 'register',
         sign_up: 'cmon_let_me_in' 
  }
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # get '/logout' => 'sessions#destroy'

  get '/coffee_beans', to: 'coffee_beans#index'
  get '/specific_bean/:id', to: 'specific_bean#index'
  
   resources :users, except: [:index] do # view, create, delete, update
     resources :brews, only: :show
   end

  # get '/signup' => 'users#new'
  # post '/users' => 'users#create'

end