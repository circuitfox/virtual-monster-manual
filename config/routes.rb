Rails.application.routes.draw do
  root "creatures#index"

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  delete "logout", to: "sessions#destroy", as: "logout"
  resources :users
  resources :sessions

  resources :damage_vulnerabilities
  resources :condition_immunities
  resources :damage_immunities
  resources :damage_resistances
  resources :creature_actions
  resources :creatures
  resources :languages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
