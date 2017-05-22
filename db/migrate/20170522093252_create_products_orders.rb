class CreateProductsOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :products_orders do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
