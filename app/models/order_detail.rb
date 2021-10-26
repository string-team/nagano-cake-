class OrderDetail < ApplicationRecord
  
  belongs_to :item
  belongs_to :order
  
  enum making_status: { impossible: 0, wait: 1, making: 2, done: 3 }
  
end
