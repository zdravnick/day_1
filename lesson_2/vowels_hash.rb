# 4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
#
alphabet = ('a'..'z').to_a
vowels = ["a", "e", "i", "o", "u", "y"]
vowels_hash = {}
vowels.each do |vowel|
  alphabet.each_with_index do |letter, index|
    vowels_hash[letter] = index+1  if letter == vowel
  end
  puts vowels_hash
end
