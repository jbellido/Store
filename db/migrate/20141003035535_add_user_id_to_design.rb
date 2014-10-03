class AddUserIdToDesign < ActiveRecord::Migration
  def change
    add_column :designs, :user_id, :integer
  end
end
