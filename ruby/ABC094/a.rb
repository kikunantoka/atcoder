a, b, x = gets.chomp.split.map(&:to_i)
puts (x-a) >= 0 && (b - (x - a)) >= 0 ? 'YES' : 'NO'
