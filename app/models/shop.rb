class Shop < ApplicationRecord
	has_many :products, through: :product_management
end
