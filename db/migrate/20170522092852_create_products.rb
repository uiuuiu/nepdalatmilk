class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :avatar
      t.decimal :color
      t.integer :updt_user_id

      t.timestamps
    end
  end
end
