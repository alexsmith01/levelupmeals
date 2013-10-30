class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :meal_type
      t.string :meal_title
      t.text :meal_description
      t.text :meal_ingredients
      t.text :meal_recipe

      t.timestamps
    end
  end
end
