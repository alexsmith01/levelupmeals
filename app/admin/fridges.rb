ActiveAdmin.register Fridge do
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
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
