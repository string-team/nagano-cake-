class Item < ApplicationRecord

  has_many :cart_items
  has_many :order_details
  belongs_to :genre
  
  attachment :image
  
  validates :genre_id, presence: true
  validates :name, presence: true
  validates :image_id, presence: true
  validates :introduction, presence: true
  validates :price, presence: true
  validates :is_active, presence: true
  
  # Kaminari.configure do |config|
  #   config.default_per_page = 10 # この数字でkaminariを使用したすべてのページの1ページあたりの表示上限件数を指定
  # end

end
