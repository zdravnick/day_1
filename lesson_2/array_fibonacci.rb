# числа Фибоначчи
#
array_fibonacci = [0, 1, 1]
loop do |n|
  puts (new_num = array_fibonacci[-1] + array_fibonacci[-2])
  break if new_num > 100
  array_fibonacci << new_num
end
array_fibonacci
