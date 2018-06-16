n = gets.to_i
as = gets.chomp.split.map(&:to_i)
count = 0
as.each do |a|
  while(a.even?)
    a /= 2
    count += 1
  end
end
puts count
