class Item < ApplicationRecord

  has_many :cart_items
  has_many :order_details
  belongs_to :genre
  
  attachment :image
  
  validates :name, presence: true
  validates :image, presence: true
  validates :introduction, presence: true
  validates :price, presence: true
  # validates :is_active, presence: true
  validates :is_active, inclusion: [true, false]

  def taxin_price
    price * 1.1
  end

end
