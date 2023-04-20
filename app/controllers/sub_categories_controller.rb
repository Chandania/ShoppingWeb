class SubCategoriesController < ApplicationController
skip_before_action :verify_authenticity_token

  def index
    a=Category.find(params[:category_id])
      item= a.sub_categories
        render json: item
  end
  def show
    sub_category = SubCategory.find(params[:id])
    render json: sub_category
  end
end
