class Shop < ApplicationRecord
  has_many :product_managements
  has_many :products, through: :product_managements
  has_many :shop_managements
  has_many :user, through: :shop_managements
end
