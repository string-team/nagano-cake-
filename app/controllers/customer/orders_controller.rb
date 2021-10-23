class Customer::OrdersController < ApplicationController
  def new
    # @customer = current_customer
    @order = Order.new
    # @address = DeliveryAddress.new
  end
end
