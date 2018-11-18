Rails.application.routes.draw do
  resources :creature_sets
  root "creatures#index"

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  delete "logout", to: "sessions#destroy", as: "logout"
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
