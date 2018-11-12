class Cart < ApplicationRecord
	scope :get_by_user_id, ->(user_id) {
	where(["user_id like ?", user_id])
	}
end
