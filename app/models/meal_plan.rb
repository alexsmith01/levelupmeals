class MealPlan < ActiveRecord::Base
  has_many :orders, :dependent => :destroy
  
  attr_accessible :description, :price, :title, :meal_plan_type
end
