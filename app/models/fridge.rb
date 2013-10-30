class Fridge < ActiveRecord::Base  
  has_attached_file :receipt

  has_many :delivery_locations, :dependent => :destroy  
  
  attr_accessible :compressor_warranty_end_date, :fridge_brand, :other_warranty_information, :parts_warranty_end_date, :purchase_date, :receipt
end
