Rails.application.routes.draw do
  resources :creature_sets
  # root "creatures#index"
  root "landing#index"

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  delete "logout", to: "sessions#destroy", as: "logout"
  get "password_reset/:id", to: "users#password_reset", as: "password_reset"
  match "password_reset/:id", to: "users#reset", via: [:patch, :put]
  resources :users
  resources :sessions
  get 'landing/index'

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
  resources :spells

  get 'search/index'
  get 'search/search', as: 'search'
  post 'search', to: 'search#run_search'
  post 'search/advanced_search', to: 'search#advanced_search', as: 'advanced_search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
