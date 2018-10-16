Rails.application.routes.draw do
  resources :damage_immunities
  resources :damage_resistances
  resources :creature_actions
  resources :creatures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
