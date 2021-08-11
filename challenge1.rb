plan = [
  { name: '沖縄旅行', price: 10_000 },
  { name: '北海道旅行', price: 20_000 },
  { name: '九州旅行', price: 15_000 }
]

puts <<~TEXT
  旅行プランを選択して下さい。

  1. 沖縄旅行（10000円）
  2. 北海道旅行（20000円）
  3. 九州旅行（15000円）

TEXT

while true
  print 'プランの番号を選択 > '
  select_plan_num = gets.to_i
  break if 0 < select_plan_num && select_plan_num < 4

  puts '1〜3の番号を入力して下さい。'
end
chosen_plan = plan[select_plan_num - 1]
puts "#{chosen_plan[:name]}ですね。"

puts '何名で予約されますか？'
while true
  print '人数を入力 > '
  reservation_person = gets.to_i
  break if 1 <= reservation_person

  puts '1以上を入力してください。'
end
puts "#{reservation_person}名ですね"
total_price = chosen_plan[:price] * reservation_person
if reservation_person >= 5
  puts '5名以上ですので10%割引となります'
  total_price *= 0.9
end
puts "合計料金は#{total_price.floor}円になります。"
