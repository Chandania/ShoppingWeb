require 'rails_helper'

RSpec.describe UsersController, type: :controller do
 include JsonWebToken 
 let!(:user) { FactoryBot.create(:user) }
 let(:body) { JSON.parse(response.body) }

  before do
    @token = jwt_encode(user_id: user.id)
  end

 	describe "GET index" do 	
	 it "returns all users" do
	 	get :index, params: {token: @token}
	 	expect(response).to have_http_status(:success)
	 end
	end 

	describe "GET show" do 	
	 it "return partcular user" do
	 	get :show , params: { token: @token ,id: user.id}
	 	expect(response).to have_http_status(:success)
	 end
	end 

	describe "POST create" do 	
	 it "Creating user " do
	 	post :create , params: { token: @token , id: user.id , username: "ashi" , email: "b@b.bb",password: 123456}
	 	expect(response).to have_http_status(:success)
	 end
	end 

	describe "PUT update" do 	
	 it "To update user data" do
	 	put :update , params: { token: @token ,id: user.id , name: "ashi" , password: 123456}
	 	expect(response).to have_http_status(:success)
	 end
	end 

	describe "DELETE Destroy" do 	
	 it "To delete user data" do
	 	delete :destroy , params: { token: @token ,id: user.id}
	 	expect(response).to have_http_status(:success)
	 end
	end 

end	