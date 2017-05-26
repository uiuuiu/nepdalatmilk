class CreateProductsProductTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :products_product_types do |t|
      t.references :product, foreign_key: true
      t.references :product_type, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
