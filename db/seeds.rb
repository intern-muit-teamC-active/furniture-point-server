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
