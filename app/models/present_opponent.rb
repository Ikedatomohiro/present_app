class PresentOpponent < ApplicationRecord
	has_many :presents
	has_many :users, through: :presents
	bolongs_to :age_group
end
