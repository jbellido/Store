class CreateSleeves < ActiveRecord::Migration
  def change
    create_table :sleeves do |t|
      t.string :description

      t.timestamps
    end
  end
end
