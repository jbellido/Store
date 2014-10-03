class AddSleeveIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :sleeve_id, :integer
  end
end
