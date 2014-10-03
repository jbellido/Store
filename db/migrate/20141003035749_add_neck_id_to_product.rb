class AddNeckIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :neck_id, :integer
  end
end
