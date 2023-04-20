class Product < ApplicationRecord
   has_one_attached :img # , dependent: :destroy
   belongs_to :sub_category
   paginates_per 5
   has_many :order_items
end
