class ChangeCategoryToNullableInProducts < ActiveRecord::Migration[7.1]
  def change
    change_column :products, :category_id, :bigint, null: true
  end
end
