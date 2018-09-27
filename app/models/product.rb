class Product < ApplicationRecord
	has_and_belongs_to_many :presents
	has_and_belongs_to_many :present_opponents
	has_many :shops, through: :product_management
end
