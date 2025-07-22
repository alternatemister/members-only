Rails.application.routes.draw do
  root "posts#index"

  devise_for :users
  resources :posts, only: [:new, :create, :index]

  get "up" => "rails/health#show", as: :rails_health_check
end
