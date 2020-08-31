# 2. Заполнить массив числами от 10 до 100 с шагом 5
#
print array_with_step_5 = (5..100).step(5).to_a

# на случай, если это слишком простое решение %)
#
array_with_step_5 = []
i = 10
loop do
 i += 5
  if i <= 100
   array_with_step_5 << i
  else
    break
  end
end
print array_with_step_5