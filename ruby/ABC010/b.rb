x = gets.to_i
y = gets.chomp.split(" ").map(&:to_i)
count = 0
y.each do |i|
  while i%2==0 || i%3==2
    i -= 1
    count += 1
  end
end
puts(count)