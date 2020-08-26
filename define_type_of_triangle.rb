
# прямоугольный треугольник
def define_type_of_triangle
  triangle = []
  puts 'Введи длину первой стороны треугольника(сантиметры)'
  puts "Принято: первая сторона равна #{first_side = gets.chomp.to_f} см"
  puts 'Введи длину второй стороны треугольника(сантиметры)'
  puts "Принято: вторая сторона равна #{second_side = gets.chomp.to_f} см"
  puts 'Введи длину третьей стороны треугольника(сантиметры)'
  puts "Принято: третья сторона равна #{third_side = gets.chomp.to_f} см"
  triangle  << first_side << second_side << third_side
  puts "triangle = #{triangle.sort!.reverse!}" # проверяем заполнение массива
  longest_side = triangle.first
  middle_side = triangle.second
  shortest_side = triangle.third
  if longest_side**2  == middle_side**2  + shortest_side**2
    puts 'Треугольник прямоугольный'
  elsif longest_side == middle_side && longest_side == shortest_side && middle_side == shortest_side
    puts 'Треугольник равносторонний'
  elsif longest_side == middle_side || longest_side == shortest_side || middle_side == shortest_side
    puts 'Треугольник равнобедренный'
  else
    puts 'Треугольник самый обычный'
  end
end
define_type_of_triangle