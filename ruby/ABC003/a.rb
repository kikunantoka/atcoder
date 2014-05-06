n = gets.to_i
result = 0
n.times do |i|
  result += 10000 * (i+1)
end
puts(result / n)