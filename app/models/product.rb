class Product < ApplicationRecord
	has_many :shops, through: :product_management

	scope :get_by_name_or_characteristic, ->(name_or_characteristic) {
	where("name like ? or characteristic like ?", "%#{name_or_characteristic}%", "%#{name_or_characteristic}%")
	}

#	scope :get_by_price, ->(budget_l) {
#	where(["price >= ?", budget_l])
#	}
	scope :get_by_price, ->(budget_u) {
	where(["price <= ?", budget_u])
	}

	scope :get_by_purpose_number, ->(purpose_number) {
	where("purpose_number like ?", "%#{purpose_number}%")
	}

	scope :get_by_age_group_number, ->(age_group_number) {
	where("age_group_number like ?", "%#{age_group_number}%")
	}


end
