class CreateDeliveryLocations < ActiveRecord::Migration
  def change
    create_table :delivery_locations do |t|
      t.string :location_name
      t.string :location_address
      t.text :point_of_contact
      t.references :fridge

      t.timestamps
    end
    add_index :delivery_locations, :fridge_id
  end
end
