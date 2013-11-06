class AddFridgeIdToFridges < ActiveRecord::Migration
  def change
    add_column :fridges, :fridge_id, :integer
  end
end
