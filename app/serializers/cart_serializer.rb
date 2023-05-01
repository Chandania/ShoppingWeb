class CartSerializer < ActiveModel::Serializer
  attributes :id 
  attribute :user
  attribute :product_carts
end

