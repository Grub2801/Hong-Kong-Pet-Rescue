Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    registrations: "override_users/registrations"
  }

  mount_devise_token_auth_for 'Shelter', at: 'auth_shelter', controllers: {
    registrations: "override_shelters/registrations"
  }

  # as :shelter do
  #   # Define routes for Shelter within this block.
  # end

  root 'static_pages#index'

  namespace :api do
    resources :animals, only: [:index, :show]

    resources :shelters do
      resources :animals
    end

    resources :favorites, only: [:index, :create, :destroy]
  end
end
