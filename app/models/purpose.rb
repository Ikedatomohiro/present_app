class Purpose < ApplicationRecord
	has_many :presents
	has_many :prupose_products
	has_many :products, through: :prupose_products
end
