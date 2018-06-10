n = gets.to_i
ds = [1, 6, 9, 6**2, 9**2, 6**3, 9**3, 6**4, 9**4, 6**5, 6**6, 9**5]
count = 0
while (n != 0) do
  selected = ds.select do |d|
    d <= n
  end
  if selected.count >= 3
    j = selected[-2]
    while j < selected[-1] do
      j += selected[-2]
    end
    if j + selected[-2] != selected[-1] && n >= j && n < selected[-1] + selected[-2]
      n -= selected[-2]
      puts selected[-2]
    else
      n -= selected[-1]
      puts selected[-1]
    end
  else
    n -= selected.max
    puts selected.max
  end
  count += 1
end
puts count
