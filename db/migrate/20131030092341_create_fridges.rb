class CreateFridges < ActiveRecord::Migration
  def change
    create_table :fridges do |t|
      t.string :fridge_brand
      t.datetime :purchase_date
      t.datetime :parts_warranty_end_date
      t.datetime :compressor_warranty_end_date
      t.text :other_warranty_information

      t.timestamps
    end
  end
end
