y = gets.chomp.split(" ").map(&:to_i)
puts y[0] + y[1] >= y[2] ? "Yes" : "No"
