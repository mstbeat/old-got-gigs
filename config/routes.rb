Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'registrations' }
  root to: "gigs#index"
  resources :users, only: [:edit, :update, :show]
  resources :gigs, only: [:new, :create, :show, :destroy] do
    resources :parts, only: [:create]
  end
end
