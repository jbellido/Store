class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :description
      t.string :image_url
      t.integer :stock
      t.float :price

      t.timestamps
    end
  end
end
