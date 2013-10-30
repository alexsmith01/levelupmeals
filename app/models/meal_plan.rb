class MealPlan < ActiveRecord::Base
  attr_accessible :description, :price, :title, :meal_plan_type
end
