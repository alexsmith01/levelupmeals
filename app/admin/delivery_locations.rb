ActiveAdmin.register DeliveryLocation do  
  index do
    selectable_column
    column :location_name
    column :location_address
    column :point_of_contact    
    column "Fridge ID", :fridge_id 
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :fridge_id, :as => :select, :collection => Fridge.all.map{|fr| ["#{fr.fridge_brand}", fr.id]}
      f.input :location_name
      f.input :location_address
      f.input :point_of_contact      
    end
    f.actions
  end
end
