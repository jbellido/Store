class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :shipping_address
      t.datetime :date_order
      t.datetime :delivery_date
      t.float :total_price
      t.text :comment
      t.string :order_state

      t.timestamps
    end
  end
end
