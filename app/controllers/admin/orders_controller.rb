class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!
  before_action :order_new?, only: [:new]
  
  def index
    @orders = Order.all
  end
  
  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
  end
  
  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to admin_order_path(@order)
  end
    
private

  def order_new?
    redirect_to cart_items_path, notice: "カートに商品を入れてください。" if current_customer.cart_items.blank?
  end
  
  def order_params
    params.require(:order).permit(:status,:making_status)
  end
  
end
