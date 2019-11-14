class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :presents, dependent: :destroy
  has_many :present_opponents, through: :presents
  has_many :carts, dependent: :destroy
  has_many :products, through: :baskets
  has_one :shop_management, dependent: :destroy
  has_one :shop, through: :shop_management
  belongs_to :gender
end
