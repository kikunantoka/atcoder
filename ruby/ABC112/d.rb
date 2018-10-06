n, m = gets.chomp.split.map(&:to_i)
result = 1
(m / n).downto(2) do |i|
  if (m - i * n) % i == 0
    result = i
    break
  end
end
puts result
