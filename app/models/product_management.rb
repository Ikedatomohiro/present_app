class ProductManagement < ApplicationRecord
  belongs_to :product
  belongs_to :shop
end
