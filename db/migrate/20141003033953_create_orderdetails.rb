class CreateOrderdetails < ActiveRecord::Migration
  def change
    create_table :orderdetails do |t|
      t.integer :amount
      t.float :subtotal

      t.timestamps
    end
  end
end
