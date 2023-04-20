class OrderItemsController < ApplicationController
 skip_before_action :verify_authenticity_token  

  def index
    @order_item = OrderItem.all
    render json: @order_item 
  end
  def show
    @order_item = OrderItem.find(params[:id])
    render json: @order_item
  end
  def create
   
   @order_item = OrderItem.new(order_item_params)
    if @order_item.save
    	render json: @order_item
    else
      render :new, status: 200
    end
  end 
  def update
    
    @order_item = OrderItem.find(params[:id])
    if @order_item.update(order_item_params)
      render json: @order_item
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy
    render json: {message: 'order deleted successfully'}
  end
  private
  def order_item_params
    params.require(:order_item).permit(:order_id ,:product_id)
  end

end
