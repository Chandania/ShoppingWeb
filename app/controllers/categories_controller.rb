class CategoriesController < ApplicationController
  skip_before_action :verify_authenticity_token  
  def index
  	@category=Category.all
  	render json: @category
  end
end
