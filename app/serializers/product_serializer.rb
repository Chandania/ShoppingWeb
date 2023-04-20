class ProductSerializer < ActiveModel::Serializer
  attributes :id , :name , :price , :description, :img
   def img
    host =  Rails.application.routes.default_url_options[:host] = 'localhost:3000'
    host +  Rails.application.routes.url_helpers.rails_blob_path(object&.img, only_path: true) if object&.img.attached?
  end
 
end
  
