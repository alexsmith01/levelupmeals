class ChangeTypeFieldsInMealPlans < ActiveRecord::Migration
  def change
    remove_column :meal_plans, :type
    add_column :meal_plans, :meal_plan_type, :string   
  end
end
