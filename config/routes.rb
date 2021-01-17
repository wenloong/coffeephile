Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homepage#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/coffee_beans', to: 'coffee_beans#index'
  get '/specific_bean/:id', to: 'specific_bean#index'
  
   resources :users, except: [:index] do # view, create, delete, update
     resources :brews, only: :show
   end

  # get '/signup' => 'users#new'
  # post '/users' => 'users#create'

end