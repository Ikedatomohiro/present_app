class Present < ApplicationRecord
	belongs_to :user
	has_many :present_opponents
	has_and_belongs_to_many :products
end
