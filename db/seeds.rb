# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.find_or_create_by(id: 1) do |admin|
 admin.email = "123456@gmail.com"
 admin.password = "123456"
end

Customer.find_or_create_by(id: 1) do |customer|
 customer.email = "taro@gmail.com"
 customer.password = "123456"
 customer.last_name = "山田"
 customer.first_name = "太郎"
 customer.last_name_kana = "ヤマダ"
 customer.first_name_kana = "タロウ"
 customer.postal_code = "1008111"
 customer.address = "東京都千代田区千代田１−１"
 customer.telephone_number = "09012345678"
end

Customer.find_or_create_by(id: 2) do |customer|
 customer.email = "hanako@gmail.com"
 customer.password = "123456"
 customer.last_name = "佐藤"
 customer.first_name = "花子"
 customer.last_name_kana = "サトウ"
 customer.first_name_kana = "ハナコ"
 customer.postal_code = "1638001"
 customer.address = "東京都新宿区西新宿２丁目８−１"
 customer.telephone_number = "08012345678"
end

Genre.find_or_create_by(id: 1) do |genre|
 genre.name = "ケーキ"
end

Genre.find_or_create_by(id: 2) do |genre|
 genre.name = "プリン"
end

Genre.find_or_create_by(id: 3) do |genre|
 genre.name = "焼き菓子"
end

Genre.find_or_create_by(id: 4) do |genre|
 genre.name = "キャンディ"
end

# Item.find_or_create_by(id: 1) do |item|
#  item.genre_id = "1"
#  item.name = "ショートケーキ"
#  item.image_id = "no_image.jpg"
#  item.introduction = "売上1位です！"
#  item.price = "300"
# end

# Item.find_or_create_by(id: 2) do |item|
#  item.genre_id = "2"
#  item.name = "焼きプリン"
#  item.image_id = "no_image.jpg"
#  item.introduction = "香ばしくておいしい！"
#  item.price = "200"
# end

# Item.find_or_create_by(id: 3) do |item|
#  item.genre_id = "3"
#  item.name = "チョコクッキー"
#  item.image_id = "no_image.jpg"
#  item.introduction = "おやつに最適！"
#  item.price = "150"
# end

# Item.find_or_create_by(id: 4) do |item|
#  item.genre_id = "4"
#  item.name = "ミルクキャンディ"
#  item.image_id = "no_image.jpg"
#  item.introduction = "10粒入りです！"
#  item.price = "120"
# end