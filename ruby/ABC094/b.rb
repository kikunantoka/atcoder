n, m, x = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)

left = 0
right = 0

as.each do |a|
  left += 1 if x > a
  right += 1 if x < a
end

puts [left, right].min
