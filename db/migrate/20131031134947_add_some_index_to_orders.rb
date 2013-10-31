class AddSomeIndexToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :meal_plan_id, :integer
    add_column :orders, :customer_id, :integer
    add_column :orders, :delivery_location_id, :integer
  end
end
