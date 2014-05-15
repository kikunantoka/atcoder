r=[]
(0..3).each do |i|
  r[3-i] = gets.chomp.reverse
end
(0..3).each do |i|
  puts r[i]
end
