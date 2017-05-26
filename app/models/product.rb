class Product < ApplicationRecord

  has_many :products_categories, foreign_key: :product_id
  has_many :products_product_types, foreign_key: :product_id
end
