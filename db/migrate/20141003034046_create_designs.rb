class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :name
      t.string :image_url
      t.boolean :ispublic
      t.text :comment
      t.datetime :design_date

      t.timestamps
    end
  end
end
