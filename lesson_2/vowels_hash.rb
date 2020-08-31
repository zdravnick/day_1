# 4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
#
vowels = []
alphabet = ('a'..'z').to_a
alphabet.each do |letter|
  if [0, 4, 8, 14, 20, 24].include?(alphabet.index(letter))
    vowels << letter
  end
end
vowels
