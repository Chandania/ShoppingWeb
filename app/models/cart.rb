class Cart < ApplicationRecord
    has_many :orders  , dependent: :destroy
    has_many :users , through: :orders , dependent: :destroy
end
