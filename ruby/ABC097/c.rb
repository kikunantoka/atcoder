s = gets.chomp.to_s
k = gets.to_i
words = []
s.size.times do |i|
  s.size.times do |j|
    words.push(s[i..(i + j)]) if i + j <= s.size
  end
end
puts words.uniq.sort[k-1]
