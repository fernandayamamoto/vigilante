Rails.application.routes.draw do
  devise_for :users
  # root to: "pages#home", as: 'home'

  root to: 'pages#landing'
  get '/home', to: 'pages#home', as: 'home'
  get 'list', to: 'pages#list', as: 'list'
  get 'list_2', to: 'pages#list_2', as: 'list_2'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :incidents
  resources :incidents, only: [:show] do
    resources :chatrooms, only: [:create, :index]
  end
  resources :chatrooms, only: [:show] do
    resources :messages, only: :create
  end
end
