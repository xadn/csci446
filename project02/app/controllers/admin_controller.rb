class AdminController < ApplicationController
  def login
  end

  def logout
  end

  def index
    @total_orders = Order.count
  end

end
