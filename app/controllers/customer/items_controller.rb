class Customer::ItemsController < ApplicationController
def index
  @items = Item.all
  @items_active = Item.all.is_active(true)
end

def show
  @item = Item.find(params[:id])
  @item_tax_price = @item.price * 1.1
end
end
