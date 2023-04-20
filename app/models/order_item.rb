class OrderItem < ApplicationRecord

   belongs_to :order
   belongs_to :product

   after_create :add
   
   def add
    
   	 price = order.order_items.map{|p| p.product.price}
   	 order.total_amount = price.sum
   	 puts "#{order.total_amount}"
   	 order.save
   	 
   end
end
