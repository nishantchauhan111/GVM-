class AddColumnInProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :order, null: true
  end
end
