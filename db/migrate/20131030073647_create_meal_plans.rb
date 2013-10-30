class CreateMealPlans < ActiveRecord::Migration
  def change
    create_table :meal_plans do |t|
      t.string :title
      t.text :description
      t.string :type
      t.float :price

      t.timestamps
    end
  end
end
