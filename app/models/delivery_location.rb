class DeliveryLocation < ActiveRecord::Base
  has_attached_file :partnership_agreement
  has_attached_file :key_agreement
  
  belongs_to :fridge
  has_many :orders, :dependent => :destroy
  
  attr_accessible :location_address, :location_name, :point_of_contact, :fridge_id, :partnership_date, :key_agreement, :partnership_agreement  
end
