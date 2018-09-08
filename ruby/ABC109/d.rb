h, w = gets.chomp.split.map(&:to_i)
a = []
h.times do |i|
  a[i] = gets.chomp.split.map(&:to_i)
end
p a
