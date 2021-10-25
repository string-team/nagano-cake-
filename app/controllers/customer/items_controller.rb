class Customer::ItemsController < ApplicationController
  
  
  
  def index
    @genres = Genre.all
    @items = Item.all
    @items_active = @items.where(is_active: true).page(params[:page]).per(8)
  end
  
  def show
    @item = Item.find(params[:id])
    @item_tax_price = @item.price * 1.1
    @genres = Genre.all
    @cart_items = CartItem.new
  end
  
end
