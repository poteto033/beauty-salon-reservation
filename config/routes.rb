Rails.application.routes.draw do
  devise_for :users
  root "salon#index"
  resources :salon, only: [:show] do
    member do
      resources :reservation, only: [:new,:create]
    end
  end

end
