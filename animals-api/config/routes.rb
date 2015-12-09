Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  mount_devise_token_auth_for 'Shelter', at: 'auth_shelter', controllers: {
    registrations: "shelters/registrations"
  }

  as :shelter do
    # Define routes for Shelter within this block.
  end

  root 'static_pages#index'

  namespace :api do
    resources :animals, only: [:index, :show]

    resources :shelters, only: [:index, :show, :create, :update, :destroy] do
      resources :animals, only: [:index, :show, :create, :update, :destroy]
    end

    resources :favorites, only: [:index, :create, :destroy]

  end
end
