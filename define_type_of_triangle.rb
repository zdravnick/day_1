
# прямоугольный треугольник
# задаем массив для сторон треугольника
triangle = []
puts 'Введи длину первой стороны треугольника(сантиметры)'
puts "Принято: первая сторона равна #{first_side = gets.chomp.to_f} см"

puts 'Введи длину второй стороны треугольника(сантиметры)'
puts "Принято: вторая сторона равна #{second_side = gets.chomp.to_f} см"

puts 'Введи длину третьей стороны треугольника(сантиметры)'
puts "Принято: третья сторона равна #{third_side = gets.chomp.to_f} см"

triangle  << first_side << second_side << third_side

# проверяем заполнение массива и сортируем по убыванию
puts "triangle = #{triangle.sort!.reverse!}"
longest_side = triangle.first
middle_side = triangle.second
shortest_side = triangle.third

# определяем тип треугольника
if longest_side**2  == middle_side**2  + shortest_side**2
  puts 'Треугольник прямоугольный'
elsif triangle.uniq.count == 1
  puts 'Треугольник равносторонний'
elsif triangle.uniq.count == 2
  puts 'Треугольник равнобедренный'
else
  puts 'Треугольник самый обычный'
end

=begin
first_side, second_side, third_side = triangle
у меня отказывается работать наотрез
=end