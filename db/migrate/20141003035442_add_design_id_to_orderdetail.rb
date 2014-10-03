class AddDesignIdToOrderdetail < ActiveRecord::Migration
  def change
    add_column :orderdetails, :design_id, :integer
  end
end
