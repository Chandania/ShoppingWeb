require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
 let(:order) { FactoryBot.create(:order)}
 let!(:order_item) { FactoryBot.create(:order_item , order_id: order.id) }
 let(:body) { JSON.parse(response.body) }

 	describe "GET index" do 	
	 it "returns all order_item" do
	 	get :index, params: { id: order.id}
	 	byebug
	 	expect(response).to have_http_status(:success)
	 end
	end 

	# describe "GET show" do 	
	#  it "return partcular order_item" do
	#  	get :show , params: { user_id: user.id, id: order.id}
	#   byebug
	#  	expect(response).to have_http_status(:success)
	#  end
	# end 

	# describe "POST create" do 	
	#  it "Creating order_item " do
	#  	post :create , params: { user_id: user.id }
	#   byebug
	#  	expect(response).to have_http_status(:success)
	#  end
	# end 

	# describe "PUT update" do 	
	#  it "To update order_item" do
	#  	put :update , params: {user_id: user.id, id: order.id}
	#  	byebug
	#  	expect(response).to have_http_status(:success)
	#  end
	# end 

	# describe "DELETE Destroy" do 	
	#  it "To delete order_item" do
	#  	delete :destroy , params: { id: order.id}
	#  	byebug
	#  	expect(response).to have_http_status(:success)
	#  end
	# end 

end	
