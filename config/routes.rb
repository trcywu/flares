Rails.application.routes.draw do

  devise_for :users
  root "statics#home"
  resources :authentications, only: [:new]

  resources :users, except: [:new, :create]

  resources :flares

  # Caroline:
  resources :flares do
    collection do
      match 'search' => 'flares#search', via: [:get, :post], as: :search  
    end
  end



  resources :comments

end
