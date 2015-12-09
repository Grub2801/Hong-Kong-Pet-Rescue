Rails.application.routes.draw do
  root 'static_pages#index'

  namespace :api do
    resources :animals, only: [:index, :show]

    resources :shelters, only: [:index, :show, :create, :update, :destroy] do
      resources :animals, only: [:index, :show, :create, :update, :destroy]
    end

    resources :favorites, only: [:index, :create, :destroy]

  end
end
