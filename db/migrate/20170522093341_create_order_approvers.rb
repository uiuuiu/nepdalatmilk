class CreateOrderApprovers < ActiveRecord::Migration[5.0]
  def change
    create_table :order_approvers do |t|
      t.references :order, foreign_key: true
      t.references :employee, foreign_key: true
      t.references :approval_type, foreign_key: true

      t.timestamps
    end
  end
end
