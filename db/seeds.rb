# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
 email: '123456@gmail.com',
 password: '123456'
)

Customer.create!(
 email: 'taro@gmail.com',
 password: '123456',
 last_name: '山田',
 first_name: '太郎',
 last_name_kana: 'ヤマダ',
 first_name_kana: 'タロウ',
 postal_code: '1008111',
 address: '東京都千代田区千代田１−１',
 telephone_number: '09012345678'
)

Customer.create!(
 email: 'hanako@gmail.com',
 password: '123456',
 last_name: '佐藤',
 first_name: '花子',
 last_name_kana: 'サトウ',
 first_name_kana: 'ハナコ',
 postal_code: '1638001',
 address: '東京都新宿区西新宿２丁目８−１',
 telephone_number: '08012345678'
)

Genre.create!(
 name: 'ケーキ'
)

Genre.create!(
 name: 'プリン'
)

Genre.create!(
 name: '焼き菓子'
)

Genre.create!(
 name: 'キャンディ'
)

Item.create!(
  genre_id: '1',
  name: 'ショートケーキ',
  image: File.open('./app/assets/images/1.jpeg'),
  introduction: '売上1位です！',
  price: '300'
)

Item.create!(
 genre_id: '2',
 name: '焼きプリン',
 image: File.open('./app/assets/images/2.jpeg'),
 introduction: '香ばしくておいしい！',
 price: '200'
)
 
Item.create!(
 genre_id: '3',
 name: 'チョコクッキー',
 image: File.open('./app/assets/images/3.jpeg'),
 introduction: 'おやつに最適！',
 price: '150'
)
 
Item.create!(
 genre_id: '4',
 name: 'ミルクキャンディ',
 image: File.open('./app/assets/images/4.png'),
 introduction: '10粒入りです！',
 price: '120'
)