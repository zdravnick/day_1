# Сделать хеш, содержащий месяцы и количество дней в месяце.

# создаем хэш из месяцев года
#
months = {
  'january' => 31,
  'february' => 28,
  'march' => 31,
  'april' => 30,
  'may' => 31,
  'june' => 30,
  'july' => 31,
  'august' => 31,
  'september' => 30,
  'october' => 31,
  'november' => 30,
  'december' => 31
}

# сравниваем значение хэша с заданным числом
#
months.each do |month, size|
  if size == 30
    puts "#{month.capitalize} is 30 days length"
  end
end
