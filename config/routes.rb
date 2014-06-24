Myflix::Application.routes.draw do

  root to: 'pages#front'
  get 'home', to: 'videos#home'
  get 'ui(/:action)', controller: 'ui'

  resources :categories, only: [:show, :new, :create, :edit, :update]
  resources :videos, only: [:show] do
    collection do
      get 'search'
    end
  end


  get '/register', to: 'users#new'
  get '/sign_in', to: 'sessions#new'
  resources :sessions, only: [:create]
  get '/sign_out', to: 'sessions#destroy'



  resources :users, only: [:create]
end
