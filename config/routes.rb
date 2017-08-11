Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  # devise_for :users
  # get '/register', to: "devise/registrations#new"


  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }


  get '/users/:id', to: "users#show", as: 'user'

  resources :boards do 
    resources :shots
  end
  resources :games


  # devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }


end
