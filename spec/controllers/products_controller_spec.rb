require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
 let(:sub_category) { FactoryBot.create(:sub_category)}
 let!(:product) { FactoryBot.create(:product , sub_category_id: sub_category.id) }
 let(:body) { JSON.parse(response.body) }

  describe "POST create" do 	
	 it "Creating a new product" do
	 	post :create , params: { sub_category_id: sub_category.id , name: "chips"}
	 	expect(response).to have_http_status(:success)
    end
	end 

 	describe "GET index" do 	
	 it "returns all products" do
	 	get :index , params: { sub_category_id: sub_category.id }
	 	expect(response).to have_http_status(:success)
    end
	end 

 	describe "GET show" do 	
	 it "returns particular product" do
	 	get :show , params: {id: sub_category.id }
	 	expect(response).to have_http_status(:success)
    end
	end 

end	