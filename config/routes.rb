Rails.application.routes.draw do

  devise_for :users,
             controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  # get '/users/auth/callback', to: 'callbacks#spotify'

  root to: "events#index"
  resources :events, only: %i[index show]
  resources :profiles, only: %i[new create]
  get "home", to: "pages#home"

  resources :my_music_taste, only: :index


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
