a, b = gets.chomp.split.map(&:to_i)
puts a <= 8 && b <= 8 ? 'Yay!' : ':('
