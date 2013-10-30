ActiveAdmin.register Meal do
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
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
