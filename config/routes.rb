Rails.application.routes.draw do
  devise_for :passengers, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'flights#index'
  resources :flights, only: [:index]
  resources :airports, only: [:new, :create, :show]
end
