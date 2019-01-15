class PurposeProduct < ApplicationRecord
  belongs_to :purpose
  belongs_to :product
end
