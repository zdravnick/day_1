 # 5. Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
 # Найти порядковый номер даты, начиная отсчет с начала года.
 #
def date_definition
  mos = {
    1=>31, 2=>28, 3=>31, 4=>30, 5=>31, 6=>30, 7=>31, 8=>31, 9=>30, 10=>31, 11=>30, 12=>31
  }

  puts 'Введите число:'
  user_day = gets.to_i

  puts 'Введите номер месяца:'
  puts user_month = gets.to_i

  puts 'Введите год(4 цифры):'
  user_year = gets.to_i

  # вносим поправку на високосность
  #
  if  user_year % 400 == 0 || (user_year % 4 == 0 && user_year % 100 != 0)
    mos[2] = 29
  end

  # окончательный подсчет порядкового номера дня
  #
  day_number = mos.values.take(user_month - 1).sum + user_day
  puts " Номер дня в году: #{day_number}"
end
date_definition