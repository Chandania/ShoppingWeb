class ApplicationController < ActionController::Base
  #include JsonWebToken 
  protect_from_forgery

  # before_action :authenticate_request

  private 
    def authenticate_request
    	header = request.headers["token"] || params['token']
    	header = header.split(" ").last if header
    	decoded =  jwt_decode(header)
    	@current_user = User.find(decoded[:user_id])
    end
end
