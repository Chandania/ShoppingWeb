class SubCategoriesController < ApplicationController
skip_before_action :verify_authenticity_token

  def index
    @sub_category=SubCategory.all
    render json: @sub_category
  end
  def show
    sub_category = SubCategory.find(params[:id])
    render json: sub_category
  end
end
