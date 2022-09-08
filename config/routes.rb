Rails.application.routes.draw do

  devise_for :users,
             controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  # get '/users/auth/callback', to: 'callbacks#spotify'

  root to: "events#index"
  resources :events, only: %i[index show] do
    resources :favorites, only: %i[create]
  end
  resources :favorites, only: :destroy

  resources :profiles, only: %i[new create]
  get "home", to: "pages#home"
  get "my_profile", to: "pages#my_profile"
  get "my_favorites", to: "events#my_favorites"
  get "help", to: "pages#help"
  resources :my_music_taste, only: :index


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
