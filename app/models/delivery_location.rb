class DeliveryLocation < ActiveRecord::Base
  belongs_to :fridge
  attr_accessible :location_address, :location_name, :point_of_contact  
end
