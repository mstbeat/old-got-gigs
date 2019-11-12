Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'registrations' }
  root to: "gigs#index"
  resources :users, only: [:edit, :update, :show]
end
