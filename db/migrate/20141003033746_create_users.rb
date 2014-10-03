class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :sncode
      t.string :name
      t.string :lname
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
