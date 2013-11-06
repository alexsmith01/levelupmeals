class Meal < ActiveRecord::Base
  has_attached_file :photo, styles: { :medium => "238x238>", :thumb => "100x100>" }
  
  attr_accessible :meal_description, :meal_ingredients, :meal_recipe, :meal_title, :meal_type, :photo, :meal_id
end
