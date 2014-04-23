m = gets.to_i
if m > 70000
  puts "89"
elsif m >= 35000
  puts ((m/1000-30)/5+80)
elsif m >= 6000 && m <= 30000
  puts (m/1000+50)
elsif m >= 1000
  puts (m/100)
elsif m >= 100
  puts "0#{m/100}"
else
  puts "00"
end