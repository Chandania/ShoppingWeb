class ProductCartsController < ApplicationController
  skip_before_action :verify_authenticity_token 
   
  # def index
  #   @product_cart = ProductCart.all
  #   render json: @product_cart 
  # end
  # def show
  #   @product_cart = ProductCart.find(params[:id])
  #   render json: @product_cart
  # end

  def create
   @product_cart = current_user.cart.product_carts.new(product_cart_params)
    if @product_cart.save
      redirect_to cart_path(current_user.cart)
    else
      render :new, status: 200
    end
  end 

  # def add_to_cart
  
  #   product = Product.find(params[:product_id])
  #   @product_cart.quantity += 1
  #   @product_cart.save
  #   redirect_to cart_path
  # end

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
     
  
  private
  def product_cart_params
    params.require(:product_cart).permit(:quantity ,:product_id)
  end
end
