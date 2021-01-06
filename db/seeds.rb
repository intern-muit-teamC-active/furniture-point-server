# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
    name: "ファミリーテーブル"
    price: "44900"
)
Product.create(
    name: "丸椅子"
    price: "2700"
)
Product.create(
    name: "シングルベッド"
    price: "13500"
)
Product.create(
    name: "あったか床暖房"
    price: "3250"
)
Product.create(
    name: "コンパクト照明"
    price: "990"
)
Location.create(
    x: "5"
    y: "5"
)
Location.create(
    x: "17"
    y: "10"
)
Location.create(
    x: "20"
    y: "30"
)
Location.create(
    x: "42"
    y: "38"
)
Location.create(
    x: "21"
    y: "18"
)