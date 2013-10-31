class Order < ActiveRecord::Base
  belongs_to :meal_plan
  belongs_to :customer
  belongs_to :delivery_location
  
  attr_accessible :credit_card, :order_state, :qty, :meal_plan_id, :customer_id, :delivery_location_id
end
