a, b, c, x, y = gets.chomp.split.map(&:to_i)
result = 0
if (a - c) + (b - c) > 0
  result += [x, y].min * c * 2
  if x > y
    result += a / 2 > c ? c * (x - y) * 2 : a * (x - y)
  elsif x < y
    result += b / 2 > c ? c * (y - x) * 2 : b * (y - x)
  end
else
  result += x * a + y * b
end
puts result
