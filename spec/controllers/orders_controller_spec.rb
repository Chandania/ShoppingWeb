require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
	 include JsonWebToken 

 let(:user) { FactoryBot.create(:user)}
 let!(:order) { FactoryBot.create(:order , user_id: user.id) }
 let(:body) { JSON.parse(response.body) }

 before do
    @token = jwt_encode(user_id: user.id)
  end	
 
 	describe "GET index" do 	
	 it "returns all order" do
	 	get :index, params: { token: @token , id: user.id}
	 	byebug
	 	expect(response).to have_http_status(:success)
	 end
	end 

	describe "GET show" do 	
	 it "return partcular order" do
	 	get :show , params: { token: @token ,user_id: user.id, id: order.id}
	  byebug
	 	expect(response).to have_http_status(:success)
	 end
	end 

	describe "POST create" do 	
	 it "Creating order " do
	 	post :create , params: { token: @token , user_id: user.id }
	  byebug
	 	expect(response).to have_http_status(:success)
	 end
	end 

	describe "PUT update" do 	
	 it "To update order" do
	 	put :update , params: { token: @token ,user_id: user.id, id: order.id}
	 	byebug
	 	expect(response).to have_http_status(:success)
	 end
	end 

	describe "DELETE Destroy" do 	
	 it "To delete order" do
	 	delete :destroy , params: { token: @token , id: order.id}
	 	byebug
	 	expect(response).to have_http_status(:success)
	 end
	end 

end	