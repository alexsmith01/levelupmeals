class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :order_state
      t.integer :qty
      t.string :credit_card

      t.timestamps
    end
  end
end
