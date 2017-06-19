class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
