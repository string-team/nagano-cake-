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

Item.create(
 genre_id: "1",
 name: "ショートケーキ",
 image: File.open("./app/assets/images/no_image.jpg"),
 introduction: "売上1位です！",
 price: "300")
Item.create(
 genre_id: "2",
 name: "焼きプリン",
 image: File.open("./app/assets/images/no_image.jpg"),
 introduction: "香ばしくておいしい！",
 price: "200")
Item.create(
 genre_id: "3",
 name: "チョコクッキー",
 image: File.open("./app/assets/images/no_image.jpg"),
 introduction: "おやつに最適！",
 price: "150")
Item.create(
 genre_id: "4",
 name: "ミルクキャンディ",
 image: File.open("./app/assets/images/no_image.jpg"),
 introduction: "10粒入りです！",
 price: "120")