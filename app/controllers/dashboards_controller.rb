class DashboardsController < ApplicationController
   def index
      if params[:sub_category_id].present?
         @products = SubCategory.find(params[:sub_category_id]).products
      else
         @products=Product.all
      end
      @categories = Category.includes(:sub_categories).all
   end
end


