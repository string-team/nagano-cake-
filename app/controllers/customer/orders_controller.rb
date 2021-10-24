class Customer::OrdersController < ApplicationController
  def new
    @order = Order.new
    @addresses = Address.where(customer_id: current_customer.id)
  end
  
  def confirm
    
    @order = Order.new(order_params)
    @cart_items = CartItem.where(customer_id: current_customer.id)
    @total = 0
    if params[:address_number] == "1"
      @order.postal_code = current_customer.postal_code
      @order.address = current_customer.address
      @order.name = current_customer.first_name+current_customer.last_name
    elsif params[:address_number] == "2"
      @address = Address.find(params[:order][:id])
      @order.postal_code = @address.postal_code
      @order.address = @address.address
      @order.name = @address.name
    elsif params[:address_number] ==  "3" 
      @order.address = params[:order][:address]
      @order.name = params[:order][:name]
      @order.postal_code = params[:order][:postal_code]
    else
      render 'new'
    end
  end
  
  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.save
      @cart_items = current_customer.cart_items.all
      @cart_items.each do |cart_item|
        @order_items = @order.order_items.new
        @order_items.item_id = cart_item.item.id
        @order_items.name = cart_item.item.name
        @order_items.price = cart_item.item.price
        @order_items.quantity = cart_item.amount
        @order_items.save
      
    @cart_items = destroy_all
    redirect_to orders_complete_path
  end
  
  def complete
  end
  
  
  private
  
  
  def order_params
    params.require(:order).permit(:payment_method, :address, :shipping_cost, :postal_code, :name, :total_payment)
  end
end
