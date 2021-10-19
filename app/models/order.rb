class Order < ApplicationRecord
  enum payment_method: { credit_card: 0, transfer: 1 }
  enum status: { wait: 0, confirm: 1, making: 2, packing: 3, done: 4 }
end
