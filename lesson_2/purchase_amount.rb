# Сумма покупок
#
items = {}
loop do
  puts 'введите название'
  item_name = gets.chomp
  if item_name == 'stop'
    total_sum = items.values.map {|values| values[:sum]}.sum
    puts "Цена за всю корзину: #{total_sum} руб"
    puts items
    items.each do |key, value|
      puts "#{key} => #{value[:sum]}"
    end
    break
  end
  puts "Ok, вы хотите купить #{item_name}, введите цену: "
  item_price = gets.chomp.to_f
  puts 'введите количество'
  item_quantity = gets.chomp.to_f
  item_sum = item_price * item_quantity
  items[item_name] = {price: item_price, quantity: item_quantity, sum: item_sum}
end