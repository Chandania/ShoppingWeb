class AuthenticationController < ApplicationController
  # include JsonWebToken 
  # skip_before_action :authenticate_user, only: [:create], raise: false
  # # skip_before_action :authenticate_request

  # def login
  # 	@user = User.find_by_email(params[:email])
  # 	if @user&.authenticate(params[:password])
  # 		token = jwt_encode(user_id: @user.id)
  # 		render json: { token: token } , status: 200
  #   else 
  #   	render json: { error: 'unauthorized' }, status: :unauthorized
  #   end
  # end  
end
