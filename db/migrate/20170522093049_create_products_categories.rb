class CreateProductsCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :products_categories do |t|
      t.references :product, foreign_key: true
      t.references :category, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
