require 'rails_helper'

RSpec.describe SubCategoriesController, type: :controller do
 let(:category) { FactoryBot.create(:category)}
 let!(:sub_category) { FactoryBot.create(:sub_category , category_id: category.id) }
 let(:body) { JSON.parse(response.body) }

 	describe "GET index" do 	
	 it "returns all sub_categories" do
	 	get :index , params: { category_id: category.id }
	 	expect(response).to have_http_status(:success)
    end
	end 

 	describe "GET show" do 	
	 it "returns particular sub_category" do
	 	get :show , params: {id: category.id }
	 	expect(response).to have_http_status(:success)
    end
	end 

end	