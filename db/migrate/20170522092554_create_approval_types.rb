class CreateApprovalTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :approval_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
