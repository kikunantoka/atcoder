n = gets.to_i
spots = gets.chomp.split.map(&:to_i)
spots.unshift(0)
spots.push(0)
distances = Array.new(n + 1).map{Array.new(2,0)}
(n + 1).times do |i|
  if (i == 0)
    distances[0][i] = 0
    distances[1][i] = spots[i+1].abs
  else
    distances[0][i] = (spots[i-1] - spots[i+1]).abs
    distances[1][i] = (spots[i] - spots[i+1]).abs
  end
end
sum = distances[1].inject(:+)
n.times do |i|
  puts sum - distances[1][i] - distances[1][i+1] + distances[0][i+1]
end
