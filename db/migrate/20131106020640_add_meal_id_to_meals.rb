class AddMealIdToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :meal_id, :integer
  end
end
