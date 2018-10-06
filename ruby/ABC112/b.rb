n, t = gets.chomp.split.map(&:to_i)
costs = []
result = 0
n.times do
  costs.push(gets.chomp.split.map(&:to_i))
end
costs.each do |cost|
  if cost[1] <= t
    if result == 0
      result = cost[0]
    else
      result = cost[0] if cost[0] <= result
    end
  end
end
puts result == 0 ? 'TLE' : result
