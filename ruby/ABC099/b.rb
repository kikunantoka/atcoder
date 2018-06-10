a, b = gets.chomp.split.map(&:to_i)
result = 0
(b - a).times do |i|
  result += i
end
puts result - a
