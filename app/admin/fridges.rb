ActiveAdmin.register Fridge do
  menu :priority => 6
  index do
    selectable_column
    column "Fridge ID", :fridge_id        
    column :fridge_brand
    column :purchase_date    
    column :parts_warranty_end_date
    column :compressor_warranty_end_date
    column :other_warranty_information    
    column "Receipt" do |fr|
      link_to(fr.receipt_file_name, fr.receipt.url) if fr.receipt.present?
    end    
    default_actions
  end
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :fridge_id
      f.input :fridge_brand
      f.input :purchase_date, :as => :datetime
      f.input :parts_warranty_end_date, :as => :datetime
      f.input :compressor_warranty_end_date, :as => :datetime
      f.input :other_warranty_information
      f.input :receipt, :as => :file
    end
    f.buttons
  end
end
