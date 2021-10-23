class Customer::OrdersController < ApplicationController
  def new
    # @customer = current_customer
    @order = Order.new
    # @address = DeliveryAddress.new
  end
  
  def confirm
    @order = Order.new(order_params)
    @cart_items = CartItem.where(customer_id: current_customer.id)
    @total = 0
  end
  
  def complete
  end
  
  
  private
  
  
  def order_params
    params.require(:order).permit(:payment_method, :address, :shipping_cost, :postal_code, :name, :total_payment)
  end
end
