class UsersController < ApplicationController
  include JsonWebToken 
  before_action :authenticate_request, only: [:index, :show, :update, :destroy] 
  skip_before_action :verify_authenticity_token

  def index
    @user = User.all
    render json: @user
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    # byebug
    @user = User.new(user_params)
    if @user.save
      token = jwt_encode(user_id: @user.id)
      render json: {data: @user, token: token}, status: :created
    else
      render json: @user.errors.full_messages
    end
  end 

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render json: @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {message: 'user deleted successfully'}
  end

  private

  def user_params
    params.permit(:name, :address, :contact, :username , :email, :password)
  end
end

