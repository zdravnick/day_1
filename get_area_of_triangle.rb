# 2. площадь треугольника
def get_area_of_triangle
  puts 'Введите основание треугольника в сантиметрах'
  base_triangle = gets.chomp.to_f
  puts "Ок, основание равно #{base_triangle} см"
  puts 'Введите высоту треугольника в сантиметрах'
  height_triangle = gets.chomp.to_f
  puts "Ок, высота равна #{height_triangle} см"
  area_of_triangle = (base_triangle + height_triangle)/2.round(2)
puts "Площадь треугольника равна #{area_of_triangle} см.кв."
end
get_area_of_triangle