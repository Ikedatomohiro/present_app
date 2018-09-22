class PresentOpponent < ApplicationRecord
	belongs_to :present
	has_and_belongs_to_many :products
end
