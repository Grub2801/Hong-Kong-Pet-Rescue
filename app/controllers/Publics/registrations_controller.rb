module Publics
  class RegistrationsController < DeviseTokenAuth::RegistrationsController
  before_filter :configure_sign_up_params, only: [:create]
  before_filter :configure_account_update_params, only: [:update]

    def configure_sign_up_params
      devise_parameter_sanitizer.for(:sign_up) << [:email]
    end

    # If you have extra params to permit, append them to the sanitizer.
    def configure_account_update_params
      devise_parameter_sanitizer.for(:account_update) << [:email]
    end

  end
end