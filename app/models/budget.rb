class Budget < ApplicationRecord
	has_many :presents
	has_many :products, through: :budget_products
end
