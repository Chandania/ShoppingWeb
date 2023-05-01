class SubCategorySerializer < ActiveModel::Serializer
  
  attributes :id , :name
  attribute :category
  
end
