Rails.application.routes.draw do
  devise_for :users
  root to: 'bicycle_models#index'
  resources :bicycle_models
  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
