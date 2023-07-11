Rails.application.routes.draw do
  root "home#index"

  devise_for :users

  resources :categories do
    resources :transactions, only: [:new, :create]
  end

  resources :transactions, only: [:index, :new]
end
