class Customer::HomesController < ApplicationController
  def top
    @item = Item.find_by(params[:id])
  end

  def about
  end
end
