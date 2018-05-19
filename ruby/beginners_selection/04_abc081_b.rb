x = gets.to_i
ys = gets.chomp.split.map(&:to_i)
count = 0
while(1) do
  break unless ys.select { |y| y.odd? }.empty?
  ys.map! { |y| y / 2 }
  count += 1
end

puts count
