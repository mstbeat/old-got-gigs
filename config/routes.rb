Rails.application.routes.draw do
  devise_for :users
  root to: "gigs#index"
  resources :users, only: [:edit, :update]
end
