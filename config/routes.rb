StumptownScavenge::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # devise_scope :user do
  #   get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end

  root to: "users#index"

  resources :users, only: [:show]

  resources :locations
  resources :photos
end
