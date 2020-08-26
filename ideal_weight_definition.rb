# 1. вычисление  идеального веса
def ideal_weight_definition
  loop do
    puts 'Как твое имя? (введи stop или exit для выхода)'
    user_name = gets.chomp.downcase.capitalize
      if ['stop', 'exit'].exclude?(user_name.downcase)
      puts "Ok, #{user_name},теперь напиши свой рост в сантиметрах "
      user_height = gets.chomp.to_i
       user_weight = ((user_height  - 110) * 1.15).round(2)
        if user_weight > 0
          puts "#{user_name},твой вес #{user_weight} кг, все в порядке"
        elsif user_weight == 0
          puts "#{user_name},твой вес #{user_weight} кг, и он идеален для тебя"
        elsif user_weight < 0
          puts "#{user_name},твой вес #{user_weight} кг, и он, кажется, маловат"
        end
      else
      puts 'Увидимся!'
      break
      end
  end
end
ideal_weight_definition