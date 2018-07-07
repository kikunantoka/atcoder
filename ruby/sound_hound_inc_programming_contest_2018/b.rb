w = gets.to_s
s = gets.to_i
count = 0
result = ""
w.size.times do
  if count % s == 0
    result << w[count]
  end
  count += 1
end
puts result
