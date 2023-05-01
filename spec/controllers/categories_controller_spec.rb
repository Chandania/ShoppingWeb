require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
 let!(:category) { FactoryBot.create(:category) }
 let(:body) { JSON.parse(response.body) }

 	describe "GET index" do 	
	 it "returns all categories" do
	 	get :index 
	 	expect(body[0]['name']).to eq("grocery")
	 end
	end 
end	