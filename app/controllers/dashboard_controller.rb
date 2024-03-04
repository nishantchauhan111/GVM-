class DashboardController < ApplicationController
  def index
    @orders = Order.all.count

    start_of_month = Date.today.beginning_of_month
    end_of_month = Date.today.end_of_month
    @sales = OrderItem.joins(:order).where(orders: { created_at: start_of_month..end_of_month }).count
  end
end
  