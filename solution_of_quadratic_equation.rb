# 4. квадратные уравнения
def solution_of_quadratic_equation
  loop do
    puts 'Ввведите коэффициент а, не равный нулю'
    a = gets.chomp.to_f

    if a != 0
      puts "Принято: а = #{a}"
      puts 'Введите коэффициент b'
      puts "b = #{b = gets.chomp.to_f}"
      puts 'Введите коэффициент c'
      puts "c = #{c = gets.chomp.to_f}"

      discriminant = b**2 - 4*a*c

      if discriminant < 0
        puts "Корней нет, дискриминант равен #{discriminant} и он меньше нуля"
      elsif discriminant == 0
        root = (-b)/(2*a)
        puts " Дискриминант равен нулю, корень один и равен #{root.round(3)}  "
      elsif discriminant > 0
        root_1 = (-b + Math.sqrt(discriminant))/(2*a)
        root_2 = (-b - Math.sqrt(discriminant))/(2*a)
        puts "Дискриминант равен #{discriminant},"
        puts "Корней два, первый равен #{root_1.round(3)},  второй равен #{root_2.round(3)}"
      end

    break
    redo if a == 0
      puts 'Не должно быть равно нулю!'
    end
  end
end
solution_of_quadratic_equation

