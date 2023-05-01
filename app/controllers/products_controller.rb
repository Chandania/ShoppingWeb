class ProductsController < ApplicationController
skip_before_action :verify_authenticity_token

  def index
    @product=Product.all
    render json: @product
  end
  # def show
  #   product = Product.find(params[:id])
  #   render json: product
  # end
  # def create
  #   @product = Product.new(product_params)
  #   if @product.save
  #     # render json: product , serializer: ProductSerializer
  #     render json: ProductSerializer.new(@product).serializable_hash, status: 200
  #   else
  #     render :new, status: 200
  #   end
  # end
  # private
  # def product_params
    
  #   params.permit(:sub_category_id , :name , :price , :description , :img)
  # end

  # def serialization_options
  #   {params: { host: request.protocol + request.host_with_port }}
  # end
end
