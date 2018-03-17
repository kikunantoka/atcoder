n = gets.to_i
blue_x = []
blue_y = []
red_x = []
red_y = []
counter = 0

n.times.each do |i|
  blue_x[i], blue_y[i] = gets.chomp.split(" ").map(&:to_i)
end

n.times.each do |i|
  red_x[i], red_y[i] = gets.chomp.split(" ").map(&:to_i)
end

puts blue_x
