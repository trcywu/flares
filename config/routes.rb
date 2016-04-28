Rails.application.routes.draw do

  devise_for :users
  
  resources :authentications, only: [:new]

  resources :users, except: [:new, :create]

  resources :flares

  # Caroline:
  resources :flares do
    collection do
      match 'search' => 'flares#search', via: [:get, :post], as: :search  
    end
  end

  get "/maps", to: "statics#maps"

  resources :comments
  root "statics#home"
end
