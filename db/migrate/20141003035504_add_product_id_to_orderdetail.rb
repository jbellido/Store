class AddProductIdToOrderdetail < ActiveRecord::Migration
  def change
    add_column :orderdetails, :product_id, :integer
  end
end
