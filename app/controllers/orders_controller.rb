class OrdersController < ApplicationController
   skip_before_action :verify_authenticity_token  
 def index
    @order = Order.all
    render json: @order
  end
  def show
    @order = Order.find(params[:id])
    render json: @order
  end
  def create
   
   @order = Order.new(order_params)
    if @order.save
      OrderConfirmationMailer.with(user: User.last).order_confirmation.deliver_now
      byebug
      render json: @order
    else
      render :new, status: 200
    end
  end 
  def update
    
    @order = Order.find(params[:id])
    if @order.update(order_params)
      render json: @order
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    render json: {message: 'order deleted successfully'}
  end
  private
  def order_params
    params.permit(:user_id , :cart_id , :status)
  end


end
