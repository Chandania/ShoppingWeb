class Product < ApplicationRecord
   has_one_attached :image # , dependent: :destroy
   belongs_to :sub_category
   # paginates_per 15
   has_many :product_carts , dependent: :destroy
   has_many :carts ,through: :product_carts, dependent: :destroy
end
