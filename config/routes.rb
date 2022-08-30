Rails.application.routes.draw do
  get 'events/resources'
  get 'resources/events'
  devise_for :users,
             controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  # get '/users/auth/callback', to: 'callbacks#spotify'


  root to: "pages#home"
  resources :genres do
    resources :places, only: %i[index show]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
