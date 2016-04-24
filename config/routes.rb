Rails.application.routes.draw do

  devise_for :users
  root "statics#home"
  resources :authentications, only: [:new]

  resources :users, except: [:new, :create]

  resources :flares

end
