class Shop < ApplicationRecord
	has_many :product_managements
	has_many :products, through: :product_managements
end
