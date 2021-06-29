class CreateFoodlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :foodlogs do |t|
      t.string :meal
      t.integer :calorie
      t.integer :protein
      t.integer :time

      t.timestamps
    end
  end
end
