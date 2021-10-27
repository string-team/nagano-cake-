class Customer::HomesController < ApplicationController
  def top
    @item = Item.find_by(params[:id])
    @genres = Genre.all
    @items = Item.all
    @items_active = @items.where(is_active: true)
    @new_items = @items_active.order('updated_at DESC').limit(4)
  end

  def about
  end
end
