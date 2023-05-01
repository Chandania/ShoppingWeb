class ProductSerializer < ActiveModel::Serializer
  attributes :id , :name , :price , :description, :image
  attribute :sub_category
   def image
    host =  Rails.application.routes.default_url_options[:host] = 'localhost:3000'
    host +  Rails.application.routes.url_helpers.rails_blob_path(object&.image, only_path: true) if object&.image.attached?
  end
 
end
  
