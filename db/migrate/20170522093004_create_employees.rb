class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.string :domainname
      t.string :employee_code

      t.timestamps
    end
  end
end
