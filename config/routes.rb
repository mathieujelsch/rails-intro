Rails.application.routes.draw do
  get 'missions/index'
  get 'missions/show'
  get 'missions/create'
  get 'missions/update'
  get 'missions/destroy'
  # get 'listings/index'
  # get 'listings/show'
  # get 'listings/create'
  # get 'listings/update'
  # get 'listings/destroy'
  # get 'listing/index'
  # get 'listing/show'
  # get 'listing/create'
  # get 'listing/update'
  # get 'listing/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "listings#index"
  resources :listings, only: [:index, :show, :create, :update] do
    resources :missions, only: [:index, :show, :create, :update]
    resources :bookings, only: [:show, :create, :update]
    resources :reservations, only: [:show, :create, :update]
  end

  resources :listings, only: [:destroy]
  resources :missions, only: [:destroy]
  resources :reservations, only: [:destroy]
  resources :bookings, only: [:destroy]
end
