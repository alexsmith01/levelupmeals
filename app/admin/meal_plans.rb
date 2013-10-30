ActiveAdmin.register MealPlan do
  index do
    selectable_column
    column :title
    column :description
    column :meal_plan_type    
    column :price, :sortable => :price do |meal_plan|
      div :class => "price" do
        number_to_currency meal_plan.price, :unit => "&dollar;"
      end
    end
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :description
      f.input :meal_plan_type, :as => :select, :collection => ["Recurring", "One-time"]    
      f.input :price
    end
    f.actions
  end
end
