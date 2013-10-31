class DeliveryLocation < ActiveRecord::Base
  belongs_to :fridge
  has_many :orders, :dependent => :destroy
  
  attr_accessible :location_address, :location_name, :point_of_contact  
end
