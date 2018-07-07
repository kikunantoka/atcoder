n, m, d = gets.chomp.split.map(&:to_i)
nums = [*(1..n)]
sum = 0
count = 0
nums.repeated_permutation(m) do |as|
  count += 1
  as.length.times do |i|
    next if as.length - 1 == i
    sum += 1 if (as[i] - as[i + 1]).abs == d
  end
end
puts sum / (count * 1.0)
