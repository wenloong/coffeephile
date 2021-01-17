Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
  get '/coffee_beans', to: 'coffee_beans#index'
  
  resources :users, except: [:index] do # view, create, delete, update
    resources :brews, only: [:index, :show]
  end

end
