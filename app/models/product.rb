class Product < ApplicationRecord
	has_many :shops, through: :product_management

	scope :get_by_name, ->(name) {
	where("name like ?", "%#{name}%")
	}

	scope :get_by_characteristic, ->(characteristic) {
	where("name like ?", "%#{characteristic}%")
	}

	scope :get_by_price, ->(price) {
	where("name like ?", "%#{price}%")
	}

	scope :get_by_name, ->(name) {
	where("name like ?", "%#{name}%")
	}


end
