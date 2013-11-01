ActiveAdmin.register Order do
  menu :priority => 1
  index do
    selectable_column
    column "Order" do |order|
       "##{order.id}"
    end
    column :order_state
    column :meal_plan
    column :delivery_location do |order|
      link_to(order.delivery_location.location_name, admin_delivery_location_path(order.delivery_location))
    end   
    column :qty
    column :customer
    column :credit_card
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :meal_plan
      f.input :customer_id, :as => :select, :collection => Customer.all.map{|cu| ["#{cu.first_name} #{cu.last_name}", cu.id]}
      f.input :delivery_location_id, :as => :select, :collection => DeliveryLocation.all.map{|dl| ["#{dl.location_name}", dl.id]}
      f.input :order_state
      f.input :qty
      f.input :credit_card, :as => :select, :collection => ["American Express ending in 3004"]      
    end
    f.actions
  end
end
