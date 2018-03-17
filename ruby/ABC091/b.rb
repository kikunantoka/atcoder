s = {}
t = {}
result = []
n = gets.to_i
n.times.each do |i|
  text = gets.chomp.to_s
  s[text] = s[text].nil? ? 1 : s[text] + 1
end
m = gets.to_i
m.times.each do |i|
  text = gets.chomp.to_s
  t[text] = t[text].nil? ? 1 : t[text] + 1
end

s.each do |key, value|
  result.push(value - t[key].to_i)
end

puts result.max >= 0 ? result.max : 0
