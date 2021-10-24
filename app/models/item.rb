class Item < ApplicationRecord

  has_many :cart_items
  has_many :order_details

  def taxin_price
    price * 1.1
  end

end
