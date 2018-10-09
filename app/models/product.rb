class Product < ApplicationRecord
	has_many :shops, through: :product_management

	scope :get_by_name, ->(name) {
	where("name like ?", "%#{name}%")
	}

	scope :get_by_characteristic, ->(characteristic) {
	where("characteristic like ?", "%#{characteristic}%")
	}

	scope :get_by_price, ->(price) {
	where("price like ?", "%#{price}%")
	}

	scope :get_by_purpose_number, ->(purpose_number) {
	where("purpose_number like ?", "%#{purpose_number}%")
	}

	scope :get_by_age_group_number, ->(age_group_number) {
	where("age_group_number like ?", "%#{age_group_number}%")
	}


end
