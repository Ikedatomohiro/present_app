class Product < ApplicationRecord
	has_and_belongs_to :presents
	has_and_belongs_to :present_opponents
	has_many :shops, through: :product_management
end
