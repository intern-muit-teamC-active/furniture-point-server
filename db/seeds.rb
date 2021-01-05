Product.all.each do |product|
    product.reviews.create!(
      title: 'タイトル',
      body: 'テキストテキストテキストテキスト'
    )
end
