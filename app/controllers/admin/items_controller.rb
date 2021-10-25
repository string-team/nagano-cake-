class Admin::ItemsController < ApplicationController
  
  before_action :authenticate_admin!
  
  def index
    @items = Item.all
    @items_page = Item.page(params[:page]).per(10)
  end

  def new
    @item = Item.new
    @genres = Genre.all
  end

  def create
    @item = Item.new(item_params)
    @genres = Genre.all
    if
      @item.save
      redirect_to admin_item_path(@item.id)
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
    @genres = Genre.all
  end

  def update
    @item = Item.find(params[:id])
    if
      @item.update(item_params)
      redirect_to admin_item_path(@item.id)
    else
      render :show
    end
  end

  def show
    @item = Item.find(params[:id])
    @item_tax_price = @item.price * 1.1
  end
  
  private
    def item_params
      params.require(:item).pemit(:genre_id, :name, :image_id, :introduction, :price, :is_active)
    end
end
