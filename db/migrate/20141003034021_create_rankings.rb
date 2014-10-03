class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.integer :score
      t.text :comment
      t.datetime :ranking_date

      t.timestamps
    end
  end
end
