class OrderDetail < ApplicationRecord
  enum making_status: { impossible: 0, wait: 1, making: 2, done: 3 }
end
