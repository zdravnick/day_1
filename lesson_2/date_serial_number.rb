 # 5. Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
 # Найти порядковый номер даты, начиная отсчет с начала года.
 #
def date_definition
  puts 'Введите число:'
  day = gets.chomp.to_i
  puts day

  puts 'Введите месяц(название на русском либо английском):'
  month = gets.chomp.downcase

  puts 'Введите год(4 цифры):'
  year = gets.chomp.to_i

  # определяем количество дней, прошедших с начала года, без учета високосности года
  #
  case month
  when 'январь', 'january'      then months_correction = 0
  when 'февраль', 'february'    then months_correction = 31
  when 'март', 'march'          then months_correction = 59
  when 'апрель', 'april'        then months_correction = 89
  when 'май', 'may'             then months_correction = 120
  when 'июнь',  'june'          then months_correction = 150
  when 'июль', 'july'           then months_correction = 181
  when 'август', 'august'       then months_correction = 212
  when 'сентябрь', 'september'  then months_correction = 242
  when 'октябрь', 'october'     then months_correction = 273
  when 'ноябрь',  'november'    then months_correction = 303
  when 'декабрь', 'december'    then months_correction = 332
  end

  # вносим поправку на високосность
  #
  if  year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
    leap_correction = 1
  else
    leap_correction = 0
  end

  # окончательный подсчет порядкового номера дня
  #
  day_number = day + months_correction + leap_correction
  puts " Номер дня в году: #{day_number}"
end
date_definition