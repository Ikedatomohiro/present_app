class PresentOpponent < ApplicationRecord
  has_one :present
  belongs_to :age_group, optional: true
end
