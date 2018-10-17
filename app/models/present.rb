class Present < ApplicationRecord
	belongs_to :user
	belongs_to :present_opponent
	has_many :products, :through: :present_products
	belongs_to :purpose
	belongs_to :budget
end
