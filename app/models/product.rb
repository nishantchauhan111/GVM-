class Product < ApplicationRecord
  has_many :order_items
  has_many :orders, through: :order_items
  
  belongs_to :category, class_name: "Category", optional: true
end
