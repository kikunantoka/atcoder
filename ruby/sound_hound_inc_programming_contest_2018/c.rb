n, m, d = gets.chomp.split.map(&:to_i)
if d == 0
  puts (m - 1).to_f / n
else
  puts 2.0 * (n - d) * (m - 1) / (n ** 2)
end
