class PresentOpponent < ApplicationRecord
	belongs_to :present, inverse_of: :present_opponent
	has_many :users, through: :presents
	belongs_to :age_group
end
