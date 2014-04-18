StumptownScavenge::Application.routes.draw do
  devise_for :users

  root to: "users#index"

  resources :locations
end
