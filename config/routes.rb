Rails.application.routes.draw do
  root "creatures#index"

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  delete "logout", to: "sessions#destroy", as: "logout"
  resources :users
  resources :sessions

  resources :abilities
  resources :condition_immunities
  post "creatures/search", to: "creatures#search"
  post "creatures/advanced_search", to: "creatures#search2"
  get "creatures/search", to: "creatures#advanced_search"
  resources :creatures
  resources :creature_actions
  resources :damage_immunities
  resources :damage_resistances
  resources :damage_vulnerabilities
  resources :languages
  resources :skills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
