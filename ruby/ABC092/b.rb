n = gets.to_i
d, x = gets.chomp.split.map(&:to_i)
a = []
counter = 0
n.times do
  a.push(gets.to_i)
end
d.times do |day|
  a.each do |b|
    if (day == 0)
      counter += 1
    elsif (1 + day * b <= d)
      counter += 1
    end
  end
end

puts counter + x
