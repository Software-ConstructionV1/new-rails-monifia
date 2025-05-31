class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  
  def verified_request?
    super || valid_localhost_origin?
  end

  private

  def valid_localhost_origin?
    request.headers['Origin']&.start_with?('http://localhost') || 
      request.headers['Origin']&.start_with?('https://localhost')
  end
end
