ActiveAdmin.register Meal do
  menu :priority => 4
  index do
    selectable_column
    column "Meal ID", :meal_id        
    column :meal_type
    column :meal_title    
    column :meal_description
    column :meal_ingredients
    column "Photo" do |meal|
      link_to(image_tag(meal.photo.url(:thumb), :height => '100', :width => '100'), meal.photo.url(:original))
    end    
    default_actions
  end
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :meal_id
      f.input :meal_type, :as => :select, :collection => ["lunch", "dinner"]
      f.input :meal_title
      f.input :meal_description
      f.input :meal_ingredients
      f.input :meal_recipe
      f.input :photo, :as => :file, :hint => f.template.image_tag(f.object.photo.url(:medium))
    end
    f.buttons    
  end  
end
