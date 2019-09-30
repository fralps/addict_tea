Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Home page
  root to:'static_pages#home'

  # Static pages
  get 'static_pages/timer'

  # Devise
  devise_for :users

  # --------- Routes declarations ---------
  resources :teas

  resources :users, only: [:show]
end
