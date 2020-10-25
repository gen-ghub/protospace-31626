Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  # post 'create/prototypes', to: 'prototypes#create'
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
