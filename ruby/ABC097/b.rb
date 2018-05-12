x = gets.to_i
results = [1]
31.downto(2) do |i|
  next if x < i ** 2
  8.times do |j|
    if i ** (9 - j) <= x
      results.push(i ** (9 - j))
      break
    end
  end
end
puts results.max
