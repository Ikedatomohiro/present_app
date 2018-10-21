class Product < ApplicationRecord
	has_many :shops, through: :product_managements
	has_many :presents, through: :present_products
	has_many :present_opponents, through: :present_opponent_products
	has_many :purposes, through: :purpose_products
	has_many :budgets, through: :budget_products
	has_many :age_groups, through: :age_group_products

	scope :get_by_name_or_characteristic, ->(name_or_characteristic) {
	where("name like ? or characteristic like ?", "%#{name_or_characteristic}%", "%#{name_or_characteristic}%")
	}

	scope :get_by_price_lower, ->(budget_l) {
	where(["price >= ?", budget_l])
	}
	scope :get_by_price_upper, ->(budget_u) {
	where(["price <= ?", budget_u])
	}

	scope :get_by_purpose_number, ->(purpose_number) {
	where("purpose_number like ?", "%#{purpose_number}%")
	}

	scope :get_by_age_group_number, ->(age_group_number) {
	where("age_group_number like ?", "%#{age_group_number}%")
	}


end
