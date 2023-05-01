class CartsController < ApplicationController
  
   before_action :authenticate_user! 
   # skip_before_action :verify_authenticity_token  
 
  def index
    cart = Cart.all
    render json: cart
  end
  def show
    @product_carts = current_user.cart.product_carts
    # if params[:cart_id].present?
    #   cart = Cart.find(params[:id])
    # end
    # render json: cart
  end
  def create
   cart = Cart.new(cart_params)
    if cart.save
      render json: cart
    else
      render :new
    end
  end 
  def update
    
    cart = Cart.find(params[:id])
    if cart.update(cart_params)
      render json: cart
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    cart = Cart.find(params[:id])
    cart.destroy
    render json: {message: 'cart deleted successfully'}
  end
  private
  def cart_params
    params.require(:cart).permit(:user_id )
  end








  # def add_to_cart
  #   @product = Product.find(params[:product_id])
  #   @cart_product = user.cart.find_by(product_id: @product.id)
  #   if @cart_product
  #     @cart_product.quantity += 1
  #   else
  #     @cart_product = user.cart.build(product_id: @product.id)
  #   end
  #   @cart_product.save
  #   redirect_to cart_path
  # end
  # def remove_from_cart
  #   @cart_product = user.cart.find(params[:id])
  #   @cart_product.destroy
  #   redirect_to cart_path
  # end

end

