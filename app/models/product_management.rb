class ProductManagement < ApplicationRecord
	belongs_to :product
	belonts_to :shop
end
