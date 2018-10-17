class PresentOpponent < ApplicationRecord
	has_many :presents
	has_many :users, through: :presents
	bolongs_to :age_group
	has_many :products, trhough: :present_opponent_products
end
