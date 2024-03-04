class AddCustomerNameInOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :customer_name, :string
  end
end
