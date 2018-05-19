x = gets.to_i
ys = gets.chomp.split.map(&:to_i)
count = 0
while(ys.all?(&:even?)) do
  ys.map! { |y| y / 2 }
  count += 1
end

puts count
