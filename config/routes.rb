Rails.application.routes.draw do
  devise_for :users
  root "salon#index"
  resources :salon, only: [:index,:show] do
    resources :reservation, only: [:new,:create,:destroy]
  end

  resources :users, only: [:show]

end
