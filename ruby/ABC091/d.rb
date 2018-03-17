n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
c = []
result = 0

n.times.each do |i|
  n.times.each do |j|
    result = result ^ (a[i] + b[j])
  end
end

puts result
