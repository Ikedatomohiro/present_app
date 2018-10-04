class Product < ApplicationRecord
	has_many :shops, through: :product_management
end
