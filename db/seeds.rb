# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
    name: "ファミリーテーブル",
    price: "44900",
    imageurl: "null",
    sales: "240",
    views: "353"
)
Product.create(
    name: "丸椅子",
    price: "2700",
    imageurl: "null",
    sales: "1250",
    views: "3097"
)
Product.create(
    name: "シングルベッド",
    price: "13500",
    imageurl: "null",
    sales: "793",
    views: "689"
)
Product.create(
    name: "あったか床暖房",
    price: "3250",
    imageurl: "null",
    sales: "1954",
    views: "3950"
)
Product.create(
    name: "コンパクト照明",
    price: "990",
    imageurl: "null",
    sales: "452",
    views: "465"
)
Location.create(
    x: 5.to_f,
    y: 5.to_f
)
Location.create(
    x: 17.to_f,
    y: 10.to_f
)
Location.create(
    x: 20.to_f,
    y: 30.to_f
)
Location.create(
    x: 42.to_f,
    y: 38.to_f
)
Location.create(
    x: 21.to_f,
    y: 18.to_f
)
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
