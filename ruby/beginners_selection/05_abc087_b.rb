a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
count = 0
(a + 1).times do |aa|
  (b + 1).times do |bb|
    (c + 1).times do |cc|
      count += 1 if aa * 500 + bb * 100 + cc * 50 == x
    end
  end
end
puts count
