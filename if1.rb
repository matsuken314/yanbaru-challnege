products = [
  { name: 'トマト', price: 100 },  # インデックス ０
  { name: 'きゅうり', price: 200 },  # インデックス １
  { name: '玉ねぎ', price: 300 },   # インデックス ２
  { name: 'なす', price: 400 }     # インデックス ３
]

# 商品を表示
puts 'いらっしゃいませ！商品を選んで下さい。'
products.each.with_index(1) do |product, i|
  puts "#{i}.#{product[:name]}（#{product[:price]}円）"
end

# 商品を選択（★ここを追加★）
while true
  print '商品の番号を選択 > '
  select_product_num = gets.to_i
  break if select_product_num > 0 && select_product_num < 5

  puts '1〜4の番号を入力して下さい。'
end
chosen_product = products[select_product_num - 1]

# 個数を決定（★ここを追加★）
puts "#{chosen_product[:name]}ですね。何個買いますか？"
while true
  print '個数を入力 > '
  quantity_of_product = gets.to_i
  break if 1 <= quantity_of_product

  puts '1個以上を入力してください'
end

# 合計金額を計算（★ここを追加★）
total_price = chosen_product[:price] * quantity_of_product
if quantity_of_product >= 5
  puts '5個以上なので10％割引となります！'
  total_price *= 0.9
end
puts "合計金額は#{total_price.floor}円です。"
puts 'お買い上げありがとうございました！'
