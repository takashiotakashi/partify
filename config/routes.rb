Rails.application.routes.draw do
  get 'events/resources'
  get 'resources/events'
  devise_for :users,
             controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: "pages#home"
  resources :places, only: %i[index show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
