class CreateUsertypes < ActiveRecord::Migration
  def change
    create_table :usertypes do |t|
      t.string :description

      t.timestamps
    end
  end
end
