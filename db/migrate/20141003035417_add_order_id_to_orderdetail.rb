class AddOrderIdToOrderdetail < ActiveRecord::Migration
  def change
    add_column :orderdetails, :order_id, :integer
  end
end
