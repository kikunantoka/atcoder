a, b = gets.chomp.split.map(&:to_i)
if a + b == 15
  puts '+'
elsif a * b == 15
  puts '*'
else
  puts 'x'
end
