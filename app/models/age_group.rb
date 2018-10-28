class AgeGroup < ApplicationRecord
	has_many :present_opponents
	has_many :age_group_products
	has_many :products, through: :age_group_products
end
