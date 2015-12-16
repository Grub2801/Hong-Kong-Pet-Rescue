class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

#   after_filter :set_csrf_cookie_for_ng

#   def set_csrf_cookie_for_ng
#     cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
#   end

# protected

#   def verified_request?
#     binding.pry
#     super || valid_authenticity_token?(session, request.headers['X-XSRF-TOKEN']) # In Rails 4.2 and above
#   # super || form_authenticity_token == request.headers['X-XSRF-TOKEN'] # In Rails 4.1 and below
#   end

end
