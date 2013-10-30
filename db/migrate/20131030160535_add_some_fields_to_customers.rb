class AddSomeFieldsToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :state, :boolean
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string
  end
end
