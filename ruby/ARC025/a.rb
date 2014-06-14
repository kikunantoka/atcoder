def max(a, b)
  (a > b) ? a : b
end

d = gets.chomp.split(" ").map(&:to_i)
j = gets.chomp.split(" ").map(&:to_i)
result = 0
(d.length).times do |i|
  result += max(d[i],j[i])
end
puts(result)

