Rails.application.routes.draw do
  resources :type2s
  resources :type1s
  resources :dexes
  resources :pokemons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
