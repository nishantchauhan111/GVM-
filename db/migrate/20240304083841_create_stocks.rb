class CreateStocks < ActiveRecord::Migration[7.1]
  def change
    create_table :stocks do |t|
      t.integer :quantity
      t.references :products, null: false, foreign_key: true

      t.timestamps
    end
  end
end
