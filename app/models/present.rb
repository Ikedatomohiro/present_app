class Present < ApplicationRecord
	belongs_to :user
	has_one :present_opponent, inverse_of: :present
	accepts_nested_attributes_for :present_opponent
	has_many :present_products
	has_many :products, through: :present_products
	belongs_to :purpose, optional: true

end
