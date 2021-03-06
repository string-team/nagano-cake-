class Customer::CartItemsController < ApplicationController
  before_action :authenticate_customer!

  def create
		@item = Item.find(params[:cart_item][:item_id])
		@cart_item = CartItem.new(cart_item_params)
		@cart_item.item_id = @item.id
		@cart_item.customer_id = current_customer.id
		@cart_item.save
  	redirect_to cart_items_path
  end

  def index
    @cart_items = current_customer.cart_items.all
    @total = @cart_items.inject(0) { |sum, item| sum + item.sum_of_price }
  end

  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_to request.referer
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to request.referer
  end
  
  def destroy_all
    @cart_items = CartItem.where(customer_id: current_customer.id)
    @cart_items.destroy_all
    redirect_to request.referer
  end

  private

	def cart_item_params
		params.require(:cart_item).permit(:amount)
	end

end
