Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  resources :goats do
    resources :bookings, only: [ :index, :new, :create, :destroy]
  end

  resources :bookings


  get '/my_bookings', to: "bookings#index"
end
