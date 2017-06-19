class Product < ApplicationRecord
  DEFAULT_ATTRIBUTES = [:name, :description, :price, :avatar, :color,
      :updt_user_id]
  has_many :products_categories, foreign_key: :product_id
  has_many :products_product_types, foreign_key: :product_id
  has_many :posts, dependent: :destroy
end
