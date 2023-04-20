class CartsController < ApplicationController
   include JsonWebToken 

  before_action :authenticate_request

  # skip_before_action :verify_authenticity_token  
 
  def index
    cart = Cart.all
    render json: cart
  end
  def show
    cart = Cart.find(params[:id])
    render json: cart
  end
  def create
   cart = Cart.new(cart_params)
    if cart.save
      render json: cart
    else
      render :new, status: 200
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
    params.permit(:user_id , :product_id)
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
