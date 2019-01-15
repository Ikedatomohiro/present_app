class AgeGroupProduct < ApplicationRecord
  belongs_to :age_group
  belongs_to :product
end
