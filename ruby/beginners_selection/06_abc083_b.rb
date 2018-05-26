n, a, b = gets.chomp.split.map(&:to_i)
results = []
1.upto(n) do |i|
  tmp = i
  c = d = e = f = g = 0
  c = tmp / 10000
  tmp = tmp % 10000
  d = tmp / 1000
  tmp = tmp % 1000
  e = tmp / 100
  tmp = tmp % 100
  f = tmp / 10
  g = tmp % 10
  sum = c + d + e + f + g
  results.push(i) if sum >= a && sum <= b
end
puts results.inject(:+)
