class OrderItemSerializer < ActiveModel::Serializer
  attribute :id do |object|
    object.object.id
  end
  attribute :order_id do |object|
  object.object.order_id
  end
  attribute :product_price do |object|
  object.object.product.price
  end
end
