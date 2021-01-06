# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# coding: utf-8
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shop.create(name:'東京',imageurl:'abc')
Shop.create(name:'大阪',imageurl:'def')

User.create(name:'麻生太郎',password:'asou920',point:5000)
User.create(name:'野田佳彦',password:'noda520',point:1000)
User.create(name:'菅義偉',password:'suga126',point:100)
n = 1
Product.all.each do |product|
  if n <= 2
    text = "全然ダメ"
  elsif n == 3
    text = "普通"
  else
    text = "最高!!"
  end

  3.times do
    product.reviews.create!(
      kind: 0,
      comment: text,
      recommend: n
    )
  end

  if n == 5
    n = 1
  else
    n += 1
  end
  
  3.times do
    product.reviews.create!(
      kind: 1,
      comment: text,
      recommend: n
    )
  end
  
  Qr.create!(
    kind: 1,
    point: n * 100
  )
end
Qr.create!(
  kind: 2,
  point: 10
)

Qr.create!(
  kind: 0
)
