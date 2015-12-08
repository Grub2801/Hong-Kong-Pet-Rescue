Rails.application.routes.draw do
  root 'static_pages#index'

  namespace :api do
    resources :animals, only: [:index, :show]

    resources :shelters, only: [:index, :show, :create, :update, :destroy] do
      resources :animals, only: [:index, :show, :new, :create]
    end

  end
end
