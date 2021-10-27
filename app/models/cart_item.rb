class CartItem < ApplicationRecord
  
  belongs_to :customer
  belongs_to :item
<<<<<<< HEAD
  
end
=======

  def sum_of_price
    item.taxin_price * amount
  end

end
>>>>>>> develop
