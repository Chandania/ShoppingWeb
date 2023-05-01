class ProductCartSerializer < ActiveModel::Serializer
  attribute :id do |object|
    object.object.id
  end
  attribute :product_id do |object|
    object.object.product_id
  end
  attribute :product_name do |object|
  object.object.product.name
  end
  attribute :product_price do |object|
  object.object.product.price
  end
  attribute :quantity do |object|
    object.object.quantity
  end
end
