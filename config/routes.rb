Rails.application.routes.draw do
  root "creatures#index"

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  delete "logout", to: "sessions#destroy", as: "logout"
  get "password_reset/:id", to: "users#password_reset", as: "password_reset"
  match "password_reset/:id", to: "users#reset", via: [:patch, :put]
  resources :users
  resources :sessions

  resources :abilities
  resources :condition_immunities
  resources :creatures
  post "creatures/search", to: "creatures#search"
  resources :creature_actions
  resources :damage_immunities
  resources :damage_resistances
  resources :damage_vulnerabilities
  resources :languages
  resources :skills
  resources :spells
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
