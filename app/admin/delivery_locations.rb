ActiveAdmin.register DeliveryLocation do
  menu :priority => 5  
  index do
    selectable_column
    column :location_name
    column :location_address
    column :point_of_contact    
    column "Fridge ID", :fridge_id
    column :partnership_date  
    column :partnership_agreement do |dl|      
      link_to(dl.partnership_agreement_file_name, dl.partnership_agreement.url) if dl.partnership_agreement.present?      
    end 
    column :key_agreement do |dl|      
      link_to(dl.key_agreement_file_name, dl.key_agreement.url) if dl.key_agreement.present?
    end   
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :fridge_id, :as => :select, :collection => Fridge.all.map{|fr| ["#{fr.fridge_brand}", fr.id]}
      f.input :location_name
      f.input :location_address
      f.input :point_of_contact
      f.input :partnership_date, :as => :date
      f.input :partnership_agreement, :as => :file
      f.input :key_agreement, :as => :file            
    end
    f.actions
  end
end
