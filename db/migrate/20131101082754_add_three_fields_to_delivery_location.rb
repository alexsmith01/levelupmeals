class AddThreeFieldsToDeliveryLocation < ActiveRecord::Migration
  def change
    add_column :delivery_locations, :partnership_date, :date    
  end
end
