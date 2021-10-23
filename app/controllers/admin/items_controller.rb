class Admin::ItemsController < ApplicationController
def index
  @items = Item.all
  # @items_page = Item.page(params[:page]) ←必須ではない
end

# ↓kaminari_config.rcに記述する！
# Kaminari.configure do |config|
#   config.default_per_page = 10 # この数字でkaminariを使用したすべてのページの1ページあたりの表示上限件数を指定
# end
# ↑ここまで！

def new
  @item = Item.new
end

def create
  @item = Item.new(item_params)
  @genres = Gernre.all
  if
    @item.save
    redirect_to item_path(@item)
  else
    render :new
  end

  def edit
    @item = Item.find(params[:id])
    @genres = Gernre.all
  end

  def update
    @item = Item.find(params[:id])
    if
      @item.update(item_params)
      redirect_to item_path(item)
    else
      render :show
    end
  end

  def show
    @item = Item.find(params[:id])
    @item_tax_price = @item.price * 1.1
  end

end
end
