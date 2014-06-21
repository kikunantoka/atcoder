n = gets.to_i
ng1 = gets.to_i
ng2 = gets.to_i
ng3 = gets.to_i
count = 0
while (n>0) do
  if(n-3 != ng1 && n-3 != ng2 && n-3 != ng3)
    n = n-3
  elsif(n-2 != ng1 && n-2 != ng2 && n-2 != ng3)
    n = n-2
  elsif(n-1 != ng1 && n-1 != ng2 && n-1 != ng3)
    n = n-1
  else
    puts 'NO'
    break
  end
  count = count + 1
  if (count == 100)
    puts 'NO'
    break
  end
end
puts 'YES' if(count <= 100 && n <= 0)