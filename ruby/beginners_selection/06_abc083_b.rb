n, a, b = gets.chomp.split.map(&:to_i)
results = []
1.upto(n) do |i|
  sum = 0
  tmp = i
  4.downto(0) do |j|
    sum += tmp / (10 ** j)
    tmp %= (10 ** j)
  end
  results.push(i) if sum >= a && sum <= b
end
puts results.inject(:+)
