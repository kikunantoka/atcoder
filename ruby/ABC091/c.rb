n = gets.to_i
reds = []
blues = []
counter = 0

n.times.each do
  x, y = gets.chomp.split.map(&:to_i)
  reds.push(x: x, y: y)
end

n.times.each do
  x, y = gets.chomp.split.map(&:to_i)
  blues.push(x: x, y: y)
end

reds.sort_by! { |a| a[:x] }
blues.sort_by! { |a| a[:x] }

blues.each do |blue|
  candidates = reds.select { |red| red[:x] < blue[:x] }.sort_by { |a| a[:y] }.reverse
  candidates.each do |c|
    next unless c[:y] < blue[:y]
    counter += 1
    reds.delete c
    break
  end
end

puts counter

# 解説どおりに実装

# n = gets.to_i
# points = []
# set = []
# counter = 0

# n.times.each do |i|
#   x, y = gets.chomp.split(' ').map(&:to_i)
#   points.push(x: x, y: y, color: 'red')
# end

# n.times.each do |i|
#   x, y = gets.chomp.split(' ').map(&:to_i)
#   points.push(x: x, y: y, color: 'blue')
# end

# points.sort! { |a, b| a[:x] <=> b[:x] }

# points.each do |point|
#   if point[:color] == 'red'
#     set.push(point)
#   else
#     maximum = set.select { |red| red[:y] < point[:y] }.max { |a| a[:y] }
#     unless maximum.nil?
#       counter += 1
#       set.delete_at(set.index(maximum))
#     end
#   end
# end

# puts counter

# 下記のテストケースが通らない
# 5
# 0 0
# 7 3
# 2 2
# 4 8
# 1 6
# 8 5
# 6 9
# 5 4
# 9 1
# 3 7
