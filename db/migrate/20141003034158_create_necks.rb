class CreateNecks < ActiveRecord::Migration
  def change
    create_table :necks do |t|
      t.string :description

      t.timestamps
    end
  end
end
