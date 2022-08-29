Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :places, only: %i[index show]

  resources :genres
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
