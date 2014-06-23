Myflix::Application.routes.draw do

  root to: 'videos#home'
  get 'ui(/:action)', controller: 'ui'

  get '/home', to: 'videos#home'

  resources :videos, only: [:show] do
    collection do
      get 'search'
    end
  end

  resources :categories, only: [:show, :new, :create, :edit, :update]
end
