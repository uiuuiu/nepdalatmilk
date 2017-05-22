class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.string :order_code
      t.string :order_status

      t.timestamps
    end
  end
end
